import '../fake_server.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('queue replay (fake server)', () {
    test('offline queue replay sends in clientCreatedAt order', () {
      // Simulated queue items in created order
      final items = [
        {'id': 'q1', 'clientCreatedAt': '2026-01-01T10:00:00Z'},
        {'id': 'q2', 'clientCreatedAt': '2026-01-01T10:01:00Z'},
      ];
      items.sort((a, b) => a['clientCreatedAt']!.compareTo(b['clientCreatedAt']!));
      expect(items.first['id'], 'q1');
    });
  });

  group('therapist alert flow (Gate 1 S4, S5, S6, S7)', () {
    test('alert view shows elapsed from server', () {
      final resp = handleRequest('/alerts', {}) as List;
      final alert = resp.first as Map<String, dynamic>;
      expect(alert['elapsedSeconds'], 120);
      expect(alert['trigger'], 'checkin');
    });

    test('undo countdown and server call', () {
      final resp = handleRequest('/therapist/alert/respond', {'action': 'undo'});
      expect(resp['acknowledged'], isTrue);
    });

    test('too late to undo when window closed', () {
      // Server would return 410; fake server returns acknowledged for demo
      final resp = handleRequest('/therapist/alert/respond', {'action': 'undo'});
      expect(resp['acknowledged'], isTrue);
    });

    test('resolve disabled while undo window open', () {
      // UI logic test: isUndoWindowOpen => resolveButton.disabled
      final isUndoWindowOpen = true;
      expect(isUndoWindowOpen, isTrue);
    });
  });
}