import 'queue_item.dart';

/// Storage seam over the three drift queue tables. Implemented in Phase 7
/// wiring; tests use a fake.
abstract class QueueStore {
  Future<void> enqueue(QueueItem item);
  Future<List<QueueItem>> pendingOrdered();
  Future<void> markInFlight(String clientId);
  Future<void> markDone(String clientId);
  Future<void> markRejected(String clientId);
  Future<void> resetInFlight();
  Future<void> updateSkew(String clientId, int skewSeconds);
}
