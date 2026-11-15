import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for DevicesApi
void main() {
  final instance = SolaceApi().getDevicesApi();

  group(DevicesApi, () {
    // Notification preferences. Crisis types cannot be disabled.
    //
    //Future<GetNotificationPreferences200Response> getNotificationPreferences() async
    test('test getNotificationPreferences', () async {
      // TODO
    });

    // Register an FCM token.
    //
    //Future<RegisterDevice201Response> registerDevice(RegisterDeviceRequest registerDeviceRequest) async
    test('test registerDevice', () async {
      // TODO
    });

    // Enable or disable one notification type.
    //
    //Future<SetNotificationPreference200Response> setNotificationPreference(NotificationType type, SetNotificationPreferenceRequest setNotificationPreferenceRequest) async
    test('test setNotificationPreference', () async {
      // TODO
    });

    // Remove a device token.
    //
    //Future<EmptyEnvelope> unregisterDevice(String id) async
    test('test unregisterDevice', () async {
      // TODO
    });

  });
}
