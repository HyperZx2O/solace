import 'queue_item.dart';

/// Outcome of sending one queue item.
enum SendOutcome { accepted, duplicate, historicalFlagged, rejected }

/// Sends a queue item to the server. Implemented by [RealSender] using the
/// generated client; tests inject a fake.
abstract class Sender {
  Future<SendOutcome> send(QueueItem item);
  Future<DateTime?> serverTime();
}
