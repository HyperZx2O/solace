import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';

// tests for NotificationPreference
void main() {
  final instance = NotificationPreferenceBuilder();
  // TODO add properties to the builder and call build()

  group(NotificationPreference, () {
    // NotificationType type
    test('to test the property `type`', () async {
      // TODO
    });

    // bool enabled
    test('to test the property `enabled`', () async {
      // TODO
    });

    // False for crisis types, which cannot be turned off (R-NOTIF-4)
    // bool disableable
    test('to test the property `disableable`', () async {
      // TODO
    });

  });
}
