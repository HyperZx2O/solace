import 'dart:io';
import 'dart:math';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
// ignore: unused_import
import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';

part 'database.g.dart';

/// Cache of the patient's safety plan (read-only offline; field 4 is
/// patient-owned and never shared with therapists — spec 7.1).
class SafetyPlanCache extends Table {
  IntColumn get id => integer().withDefault(const Constant(1))();
  TextColumn get field1 => text().nullable()();
  TextColumn get field2 => text().nullable()();
  TextColumn get field3 => text().nullable()();
  TextColumn get field4 => text().nullable()();
  TextColumn get field5 => text().nullable()();
  BoolColumn get sharedWithTherapist =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get fetchedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Today's task, cached so Home works offline ("loaded earlier").
class TodayTaskCache extends Table {
  IntColumn get id => integer().withDefault(const Constant(1))();
  TextColumn get taskId => text()();
  TextColumn get taskKey => text()();
  TextColumn get title => text()();
  TextColumn get assignedFor => text()();
  DateTimeColumn get completedAt => dateTime().nullable()();
  TextColumn get swapReason => text().nullable()();
  BoolColumn get canSwap => boolean().withDefault(const Constant(true))();
  BoolColumn get checkInDone => boolean().withDefault(const Constant(false))();
  BoolColumn get reflectionAvailable =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get fetchedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// 30-day mood series cache, derived from `GET /v1/check-ins`.
class MoodHistoryCache extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get checkInId => text()();
  TextColumn get clientId => text()();
  IntColumn get mood => integer()();
  TextColumn get feelingWords => text().withDefault(const Constant('[]'))();
  TextColumn get bodySignal => text().nullable()();
  DateTimeColumn get clientCreatedAt => dateTime()();
  DateTimeColumn get serverReceivedAt => dateTime()();
}

/// Patient's own contacts plus the therapist's number when connected
/// (read-only, spec 7.1).
class EmergencyContacts extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get number => text().nullable()();
  TextColumn get kind => text()(); // 'patient' | 'therapist'
  BoolColumn get readOnly => boolean().withDefault(const Constant(true))();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Generic shape for the three device-originated queues (check-in, journal,
/// crisis). One row per `clientId` (UUID); retry state lives here, scheduling
/// is Phase 8.
class CheckInQueue extends Table {
  TextColumn get clientId => text()();
  TextColumn get payload => text()(); // JSON of the request body
  DateTimeColumn get clientCreatedAt => dateTime()();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  DateTimeColumn get nextAttemptAt => dateTime().nullable()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  IntColumn get clockSkewSeconds => integer().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {clientId};
}

class JournalQueue extends Table {
  TextColumn get clientId => text()();
  TextColumn get payload => text()();
  DateTimeColumn get clientCreatedAt => dateTime()();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  DateTimeColumn get nextAttemptAt => dateTime().nullable()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  IntColumn get clockSkewSeconds => integer().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {clientId};
}

class CrisisQueue extends Table {
  TextColumn get clientId => text()();
  TextColumn get payload => text()();
  DateTimeColumn get clientCreatedAt => dateTime()();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  DateTimeColumn get nextAttemptAt => dateTime().nullable()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  IntColumn get clockSkewSeconds => integer().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {clientId};
}

@DriftDatabase(
  tables: [
    SafetyPlanCache,
    TodayTaskCache,
    MoodHistoryCache,
    EmergencyContacts,
    CheckInQueue,
    JournalQueue,
    CrisisQueue,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase._(super.e, {this.filePath});

  final String? filePath;

  /// Test-only in-memory database. No encryption, no secure storage.
  AppDatabase.memory() : this._(NativeDatabase.memory());

  /// Test-only: open an encrypted file with an explicit key.
  AppDatabase.forFile(String path, String key)
    : this._(
        NativeDatabase(
          File(path),
          setup: (rawDb) => rawDb.execute("PRAGMA key = '$key'"),
        ),
        filePath: path,
      );

  /// Opens (or creates) the encrypted database. The key is held in
  /// flutter_secure_storage; generated on first launch.
  static Future<AppDatabase> open() async {
    const storage = FlutterSecureStorage();
    var key = await storage.read(key: 'Solace.db.key');
    if (key == null || key.isEmpty) {
      key = _randomKey();
      await storage.write(key: 'Solace.db.key', value: key);
    }
    final dir = await getApplicationDocumentsDirectory();
    final file = p.join(dir.path, 'Solace.db');
    return AppDatabase._(
      NativeDatabase(
        File(file),
        setup: (rawDb) {
          rawDb.execute("PRAGMA key = '$key'");
        },
      ),
      filePath: file,
    );
  }

  /// Closes the database and deletes its file (logout). Bundled content remains.
  Future<void> deleteFile() async {
    await close();
    if (filePath != null) {
      final f = File(filePath!);
      if (await f.exists()) await f.delete();
    }
  }

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.addColumn(checkInQueue, checkInQueue.clockSkewSeconds);
        await m.addColumn(journalQueue, journalQueue.clockSkewSeconds);
        await m.addColumn(crisisQueue, crisisQueue.clockSkewSeconds);
      }
    },
  );
}

String _randomKey() {
  final rng = Random.secure();
  final bytes = List<int>.generate(32, (_) => rng.nextInt(256));
  return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
}
