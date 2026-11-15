import 'package:solace_api/solace_api.dart' show AlertState;

class CopyKeys {
  const CopyKeys({required this.patient, required this.therapist});
  final String patient;
  final String therapist;
}

/// Single source of truth for server-state → copy-key selection (Phase 5, task 2).
/// One row per AlertState (plus the escalated_external flag override).
CopyKeys copyKeysFor(AlertState state, {bool escalatedExternal = false}) {
  if (escalatedExternal) {
    return const CopyKeys(
      patient: 'alert.patient.escalated_external',
      therapist: 'alert.therapist.escalated',
    );
  }
  return switch (state) {
    AlertState.detected || AlertState.dispatched => const CopyKeys(
      patient: 'alert.patient.connecting',
      therapist: 'alert.therapist.dispatching',
    ),
    AlertState.delivered => const CopyKeys(
      patient: 'alert.patient.therapist_notified',
      therapist: 'alert.therapist.delivered',
    ),
    AlertState.acknowledged || AlertState.patientContacted => const CopyKeys(
      patient: 'alert.patient.therapist_reviewing',
      therapist: 'alert.therapist.in_progress',
    ),
    AlertState.resolved || AlertState.closed => const CopyKeys(
      patient: 'alert.patient.resolved',
      therapist: 'alert.therapist.closed',
    ),
    _ => throw ArgumentError('Unknown AlertState: $state'),
  };
}
