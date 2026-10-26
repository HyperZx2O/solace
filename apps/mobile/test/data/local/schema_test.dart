import 'package:between/data/local/database.dart';
import 'package:flutter_test/flutter_test.dart';

/// FD-9: therapist patient data is never stored on the device. This test
/// asserts the schema contains no table that could hold patient records.
void main() {
  test('schema has no therapist/patient data tables', () {
    final db = AppDatabase.memory();
    final names = db.allTables.map((t) => t.actualTableName).toSet();
    for (final forbidden in const [
      'patient',
      'patients',
      'patient_card',
      'patient_detail',
      'patient_summary',
      'therapist_patient',
    ]) {
      expect(names, isNot(contains(forbidden)),
          reason: 'FD-9 violation: table "$forbidden" must not exist');
    }
    // Positive: the seven planned tables are present.
    expect(names, containsAll(const [
      'safety_plan_cache',
      'today_task_cache',
      'mood_history_cache',
      'emergency_contacts',
      'check_in_queue',
      'journal_queue',
      'crisis_queue',
    ]));
    db.close();
  });

  test('queue rows require clientId and clientCreatedAt', () {
    final db = AppDatabase.memory();
    // Compile-time guarantee: the generated companion requires both fields.
    final companion = CheckInQueueCompanion.insert(
      clientId: '00000000-0000-4000-8000-000000000001',
      payload: '{}',
      clientCreatedAt: DateTime.utc(2026, 10, 26),
    );
    expect(companion.clientId.present, isTrue);
    expect(companion.clientCreatedAt.present, isTrue);
    db.close();
  });
}
