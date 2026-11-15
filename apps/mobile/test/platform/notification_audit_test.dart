import 'package:solace/copy/forbidden_words.dart';
import 'package:solace/copy/notification_strings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every notification title/body passes the forbidden-word audit', () {
    final all = [...NotificationStrings.titles, ...NotificationStrings.bodies];
    for (final s in all) {
      final lower = s.toLowerCase();
      for (final w in forbiddenNotificationWords) {
        expect(
          lower.contains(w.toLowerCase()),
          isFalse,
          reason: '"$s" contains forbidden word "$w"',
        );
      }
    }
  });
}
