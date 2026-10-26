import 'dart:io';
import 'dart:math';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

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

  @override
  Set<Column<Object>> get primaryKey => {clientId};
}

@DriftDatabase(tables: [
  SafetyPlanCache,
  TodayTaskCache,
  MoodHistoryCache,
  EmergencyContacts,
  CheckInQueue,
  JournalQueue,
  CrisisQueue,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase._(super.e);

  /// Test-only in-memory database. No encryption, no secure storage.
  AppDatabase.memory() : this._(NativeDatabase.memory());

  /// Opens (or creates) the encrypted database. The key is held in
  /// flutter_secure_storage; a key is generated on first launch (Phase 7
  /// hardens rotation and backup).
  static Future<AppDatabase> open() async {
    const storage = FlutterSecureStorage();
    var key = await storage.read(key: 'between.db.key');
    if (key == null || key.isEmpty) {
      key = _randomKey();
      await storage.write(key: 'between.db.key', value: key);
    }
    final dir = await getApplicationDocumentsDirectory();
    final file = p.join(dir.path, 'between.db');
    return AppDatabase._(
      NativeDatabase(
        File(file),
        setup: (rawDb) {
          rawDb.execute("PRAGMA key = '$key'");
        },
      ),
    );
  }

  @override
  int get schemaVersion => 1;
}

String _randomKey() {
  final rng = Random.secure();
  final bytes = List<int>.generate(32, (_) => rng.nextInt(256));
  return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
}
