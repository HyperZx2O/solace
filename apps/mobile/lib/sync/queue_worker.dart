import 'clock.dart';
import 'queue_item.dart';
import 'queue_store.dart';
import 'sender.dart';

const _retryDelays = [
  Duration(minutes: 2),
  Duration(minutes: 10),
  Duration(minutes: 30),
];

/// Drains the offline queue in clientCreatedAt order. Sequential, crash-safe.
class QueueWorker {
  QueueWorker({required this.store, required this.sender, this.clock = utcNow});

  final QueueStore store;
  final Sender sender;
  final Clock clock;

  bool _running = false;

  Future<void> drain() async {
    if (_running) return;
    _running = true;
    try {
      await store.resetInFlight();
      final items = await store.pendingOrdered();
      items.sort((a, b) => a.clientCreatedAt.compareTo(b.clientCreatedAt));
      for (final item in items) {
        await _process(item);
      }
    } finally {
      _running = false;
    }
  }

  Future<void> _process(QueueItem item) async {
    await store.markInFlight(item.clientId);

    // Skew recording (FD-5): compare device clock to server time.
    final serverTime = await sender.serverTime();
    int? skew;
    if (serverTime != null) {
      final diff = clock().difference(serverTime).inSeconds.abs();
      if (diff > 5 * 60) skew = diff;
    }
    if (skew != null) {
      await store.updateSkew(item.clientId, skew);
    }

    final outcome = await sender.send(item);
    switch (outcome) {
      case SendOutcome.accepted:
      case SendOutcome.duplicate:
      case SendOutcome.historicalFlagged:
        await store.markDone(item.clientId);
        break;
      case SendOutcome.rejected:
        await store.markRejected(item.clientId);
        break;
    }
  }

  /// Next retry delay for a given attempt count.
  Duration nextRetryDelay(int attempts) {
    if (attempts >= _retryDelays.length) {
      return _retryDelays.last;
    }
    return _retryDelays[attempts];
  }
}
