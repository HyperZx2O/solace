import 'package:solace/sync/sender.dart';
import 'package:solace/sync/queue_item.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeSender implements Sender {
  final List<QueueItem> sent = [];

  @override
  Future<SendOutcome> send(QueueItem item) async {
    sent.add(item);
    return SendOutcome.accepted;
  }

  @override
  Future<DateTime?> serverTime() async => DateTime.now();
}

void main() {
  group('repositories / fake sender', () {
    test('fake sender records payload', () async {
      final sender = FakeSender();
      final item = QueueItem(
        clientId: 'q1', kind: 'check_in', payload: 'test',
        clientCreatedAt: DateTime.now(),
      );
      final res = await sender.send(item);
      expect(res, SendOutcome.accepted);
      expect(sender.sent.length, 1);
    });
  });
}
