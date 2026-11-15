import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../platform/notification_channels.dart';

abstract class NotificationAdapter {
  Future<void> show({
    required String channelId,
    required String title,
    required String body,
  });
  Future<void> createChannels();
}

class LocalNotificationAdapter implements NotificationAdapter {
  LocalNotificationAdapter(this._plugin);
  final FlutterLocalNotificationsPlugin _plugin;

  @override
  Future<void> createChannels() => createNotificationChannels(_plugin);

  @override
  Future<void> show({
    required String channelId,
    required String title,
    required String body,
  }) async {
    final visibility = channelId == crisisChannelId
        ? NotificationVisibility.secret
        : NotificationVisibility.private;
    await _plugin.show(
      channelId.hashCode,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channelId,
          channelId,
          visibility: visibility,
        ),
      ),
    );
  }
}

class FakeNotificationAdapter implements NotificationAdapter {
  final List<Map<String, String>> shown = [];
  @override
  Future<void> createChannels() async {}
  @override
  Future<void> show({
    required String channelId,
    required String title,
    required String body,
  }) async {
    shown.add({'channelId': channelId, 'title': title, 'body': body});
  }
}
