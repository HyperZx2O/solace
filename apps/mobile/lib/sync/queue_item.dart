/// Device-originated queue item. One row per `clientId` (UUID).
class QueueItem {
  const QueueItem({
    required this.clientId,
    required this.kind,
    required this.payload,
    required this.clientCreatedAt,
    this.attempts = 0,
    this.nextAttemptAt,
    this.status = 'pending',
    this.clockSkewSeconds,
  });

  final String clientId;
  final String
  kind; // check_in | journal_entry | task_completion | survey_response
  final String payload; // JSON request body
  final DateTime clientCreatedAt;
  final int attempts;
  final DateTime? nextAttemptAt;
  final String status; // pending | in_flight | rejected
  final int? clockSkewSeconds;

  QueueItem copyWith({
    int? attempts,
    DateTime? nextAttemptAt,
    String? status,
    int? clockSkewSeconds,
  }) => QueueItem(
    clientId: clientId,
    kind: kind,
    payload: payload,
    clientCreatedAt: clientCreatedAt,
    attempts: attempts ?? this.attempts,
    nextAttemptAt: nextAttemptAt ?? this.nextAttemptAt,
    status: status ?? this.status,
    clockSkewSeconds: clockSkewSeconds ?? this.clockSkewSeconds,
  );
}
