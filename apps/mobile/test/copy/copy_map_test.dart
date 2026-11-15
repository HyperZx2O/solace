import 'package:solace/copy/copy_map.dart';
import 'package:solace_api/solace_api.dart' show AlertState;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('detected/dispatched -> connecting (no notified)', () {
    for (final s in [AlertState.detected, AlertState.dispatched]) {
      final k = copyKeysFor(s);
      expect(k.patient, 'alert.patient.connecting');
      expect(k.patient, isNot(contains('notified')));
    }
  });

  test('delivered -> therapist_notified allowed', () {
    final k = copyKeysFor(AlertState.delivered);
    expect(k.patient, 'alert.patient.therapist_notified');
  });

  test('acknowledged/patient_contacted -> reviewing', () {
    for (final s in [AlertState.acknowledged, AlertState.patientContacted]) {
      expect(copyKeysFor(s).patient, 'alert.patient.therapist_reviewing');
    }
  });

  test('resolved/closed -> resolved', () {
    for (final s in [AlertState.resolved, AlertState.closed]) {
      expect(copyKeysFor(s).patient, 'alert.patient.resolved');
    }
  });

  test('escalated_external overrides to escalated copy', () {
    final k = copyKeysFor(AlertState.delivered, escalatedExternal: true);
    expect(k.patient, 'alert.patient.escalated_external');
    expect(k.therapist, 'alert.therapist.escalated');
  });

  test('no patient copy key contains notified unless delivered or later', () {
    for (final s in AlertState.values) {
      final k = copyKeysFor(s);
      if (k.patient.contains('notified')) {
        expect(
          s,
          anyOf(
            AlertState.delivered,
            AlertState.acknowledged,
            AlertState.patientContacted,
            AlertState.resolved,
            AlertState.closed,
          ),
        );
      }
    }
    // escalated flag also must not leak notified
    expect(
      copyKeysFor(AlertState.detected, escalatedExternal: true).patient,
      isNot(contains('notified')),
    );
  });
}
