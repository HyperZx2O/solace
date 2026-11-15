import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const String crisisChannelId = 'crisis';
const String careRemindersChannelId = 'care_reminders';
const String connectionChannelId = 'connection';

Future<void> createNotificationChannels(
  FlutterLocalNotificationsPlugin plugin,
) async {
  const channels = [
    AndroidNotificationChannel(
      crisisChannelId,
      'Crisis',
      description: 'Crisis alerts and resource nudges',
      importance: Importance.high,
    ),
    AndroidNotificationChannel(
      careRemindersChannelId,
      'Care reminders',
      description: 'Daily check-in and task reminders',
      importance: Importance.defaultImportance,
    ),
    AndroidNotificationChannel(
      connectionChannelId,
      'Connection',
      description: 'Therapist connection status',
      importance: Importance.defaultImportance,
    ),
  ];
  for (final c in channels) {
    await plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(c);
  }
}
