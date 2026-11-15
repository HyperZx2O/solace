/// Every notification title/body string. The audit test iterates this list.
/// Public (lock-screen) versions are neutral (spec 13).
class NotificationStrings {
  const NotificationStrings._();

  static const titles = <String>[
    'Solace: you have a message',
    'Daily check-in',
    'Safety check',
  ];

  static const bodies = <String>[
    'Solace: you have a message',
    'How are you doing today?',
    'Here is a number you can call right now.',
  ];
}
