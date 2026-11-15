/// Forbidden words that must never appear in any notification title or body
/// (spec 13 / copy.md rules). The audit test checks every registered string.
const List<String> forbiddenNotificationWords = [
  'notified',
  'someone is coming',
  'we noticed',
  'we detected',
  'therapist can now see',
  'streak',
  'missed',
  'failed',
];
