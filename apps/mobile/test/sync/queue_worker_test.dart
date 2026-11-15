import 'package:solace/sync/queue_item.dart';
import 'package:solace/sync/queue_store.dart';
import 'package:solace/sync/queue_worker.dart';
import 'package:solace/sync/sender.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeStore implements QueueStore {
  final List<QueueItem> _items = [];
  final List<String> done = [];
  final List<String> rejected = [];
  final List<String> inFlight = [];

  void seed(List<QueueItem> items) => _items.addAll(items);

  @override
  Future<void> enqueue(QueueItem item) async => _items.add(item);

  @override
  Future<List<QueueItem>> pendingOrdered() async =>
      List.of(_items.where((i) => i.status == 'pending'));

  @override
  Future<void> markInFlight(String clientId) async {
    inFlight.add(clientId);
    final idx = _items.indexWhere((i) => i.clientId == clientId);
    if (idx >= 0) {
      _items[idx] = _items[idx].copyWith(status: 'in_flight');
    }
  }

  @override
  Future<void> markDone(String clientId) async {
    done.add(clientId);
    _items.removeWhere((i) => i.clientId == clientId);
  }

  @override
  Future<void> markRejected(String clientId) async {
    rejected.add(clientId);
    final idx = _items.indexWhere((i) => i.clientId == clientId);
    if (idx >= 0) {
      _items[idx] = _items[idx].copyWith(status: 'rejected');
    }
  }

  @override
  Future<void> resetInFlight() async {
    for (var i = 0; i < _items.length; i++) {
      if (_items[i].status == 'in_flight') {
        _items[i] = _items[i].copyWith(status: 'pending');
      }
    }
  }

  @override
  Future<void> updateSkew(String clientId, int skewSeconds) async {}
}

class _FakeSender implements Sender {
  _FakeSender(this.outcomes, {this.serverTimeValue});

  final Map<String, SendOutcome> outcomes;
  final DateTime? serverTimeValue;
  final List<String> sent = [];

  @override
  Future<SendOutcome> send(QueueItem item) async {
    sent.add(item.clientId);
    return outcomes[item.clientId] ?? SendOutcome.accepted;
  }

  @override
  Future<DateTime?> serverTime() async => serverTimeValue;
}

QueueItem _item(String id, DateTime created) => QueueItem(
  clientId: id,
  kind: 'check_in',
  payload: '{}',
  clientCreatedAt: created,
);

void main() {
  test('items sent in clientCreatedAt order', () async {
    final store = _FakeStore();
    final now = DateTime.utc(2026, 10, 26, 10);
    store.seed([
      _item('b', now.add(const Duration(minutes: 5))),
      _item('a', now),
    ]);
    final sender = _FakeSender({
      'a': SendOutcome.accepted,
      'b': SendOutcome.accepted,
    });
    final worker = QueueWorker(store: store, sender: sender, clock: () => now);
    await worker.drain();
    expect(sender.sent, ['a', 'b']);
  });

  test('duplicate treated as success (removed)', () async {
    final store = _FakeStore();
    final now = DateTime.utc(2026, 10, 26, 10);
    store.seed([_item('a', now)]);
    final sender = _FakeSender({'a': SendOutcome.duplicate});
    final worker = QueueWorker(store: store, sender: sender, clock: () => now);
    await worker.drain();
    expect(store.done, contains('a'));
    expect(store.rejected, isEmpty);
  });

  test('historical_flagged treated as success (removed)', () async {
    final store = _FakeStore();
    final now = DateTime.utc(2026, 10, 26, 10);
    store.seed([_item('a', now)]);
    final sender = _FakeSender({'a': SendOutcome.historicalFlagged});
    final worker = QueueWorker(store: store, sender: sender, clock: () => now);
    await worker.drain();
    expect(store.done, contains('a'));
  });

  test('rejected item stays in queue and is reported', () async {
    final store = _FakeStore();
    final now = DateTime.utc(2026, 10, 26, 10);
    store.seed([_item('a', now)]);
    final sender = _FakeSender({'a': SendOutcome.rejected});
    final worker = QueueWorker(store: store, sender: sender, clock: () => now);
    await worker.drain();
    expect(store.rejected, contains('a'));
    expect(store.done, isEmpty);
  });

  test(
    'crash replay: in_flight reset to pending, no duplicate send on re-drain',
    () async {
      final store = _FakeStore();
      final now = DateTime.utc(2026, 10, 26, 10);
      store.seed([_item('a', now)]);
      // simulate crash mid-flight
      await store.markInFlight('a');
      final sender = _FakeSender({'a': SendOutcome.accepted});
      final worker = QueueWorker(
        store: store,
        sender: sender,
        clock: () => now,
      );
      await worker.drain();
      expect(sender.sent, ['a']); // sent once
      expect(store.done, contains('a'));
    },
  );

  test('retry schedule 2, 10, 30 minutes then capped', () {
    final store = _FakeStore();
    final worker = QueueWorker(store: store, sender: _FakeSender({}));
    expect(worker.nextRetryDelay(0), const Duration(minutes: 2));
    expect(worker.nextRetryDelay(1), const Duration(minutes: 10));
    expect(worker.nextRetryDelay(2), const Duration(minutes: 30));
    expect(worker.nextRetryDelay(5), const Duration(minutes: 30));
  });

  test('skew recorded when device clock differs >5min', () async {
    final store = _FakeStore();
    final deviceNow = DateTime.utc(2026, 10, 26, 10, 10);
    final serverTime = DateTime.utc(2026, 10, 26, 10, 0);
    store.seed([_item('a', deviceNow)]);
    final sender = _FakeSender({
      'a': SendOutcome.accepted,
    }, serverTimeValue: serverTime);
    // override updateSkew tracking
    final tracking = _TrackingStore(store);
    final worker = QueueWorker(
      store: tracking,
      sender: sender,
      clock: () => deviceNow,
    );
    await worker.drain();
    expect(tracking.skewRecorded['a'], 600);
  });
}

class _TrackingStore extends _FakeStore {
  _TrackingStore(this._inner);
  final _FakeStore _inner;
  final Map<String, int> skewRecorded = {};

  @override
  Future<List<QueueItem>> pendingOrdered() => _inner.pendingOrdered();

  @override
  Future<void> enqueue(QueueItem item) => _inner.enqueue(item);

  @override
  Future<void> markInFlight(String clientId) => _inner.markInFlight(clientId);

  @override
  Future<void> markDone(String clientId) => _inner.markDone(clientId);

  @override
  Future<void> markRejected(String clientId) => _inner.markRejected(clientId);

  @override
  Future<void> resetInFlight() => _inner.resetInFlight();

  @override
  Future<void> updateSkew(String clientId, int skewSeconds) async {
    skewRecorded[clientId] = skewSeconds;
    await _inner.updateSkew(clientId, skewSeconds);
  }
}
