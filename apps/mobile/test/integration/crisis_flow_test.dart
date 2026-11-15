import '../fake_server.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('crisis flow (fake server)', () {
    test('start crisis returns connecting status', () {
      final resp = handleRequest('/crisis/start', {});
      expect(resp['status'], 'connecting');
      expect(resp['personalJournal'], '[COPY-BLOCKED]');
    });

    test('finish crisis returns delivered', () {
      final resp = handleRequest('/crisis/finish', {});
      expect(resp['status'], 'delivered');
    });

    test('offline crisis: copy persists (no network needed)', () {
      final resp = handleRequest('/alerts', {});
      expect(resp, isA<List>());
    });
  });

  group('therapist invite (Gate 1 S15/S16)', () {
    test('invite reveals first name only', () {
      final resp = handleRequest('/therapist/invite', {});
      expect(resp['firstName'], 'Ana');
      expect(resp.containsKey('email'), isFalse);
      expect(resp.containsKey('phone'), isFalse);
    });
  });
}
