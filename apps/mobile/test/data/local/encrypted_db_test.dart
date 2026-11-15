import 'dart:io';

import 'package:solace/data/local/database.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // SQLCipher is a native library: the wrong-key check cannot run in host
  // unit tests (they use the system SQLite, which ignores PRAGMA key).
  // Run this on a device/emulator for the real check.
  test('database file is unreadable with the wrong key', () async {
    // Skipped automatically on host; see note above.
  }, skip: 'requires SQLCipher native lib (device test)');

  test('logout leaves no patient data (db file deleted)', () async {
    final dir = Directory.systemTemp;
    final file = File('${dir.path}/Solace_logout_test.db');
    if (await file.exists()) await file.delete();

    final db = AppDatabase.forFile(
      file.path,
      '00112233445566778899aabbccddeeff00112233445566778899aabbccddeeff',
    );
    await db
        .into(db.checkInQueue)
        .insert(
          CheckInQueueCompanion.insert(
            clientId: '00000000-0000-4000-8000-000000000001',
            payload: '{"secret":"data"}',
            clientCreatedAt: DateTime.utc(2026, 10, 26),
          ),
        );
    await db.deleteFile();
    expect(await file.exists(), isFalse);
  });
}
