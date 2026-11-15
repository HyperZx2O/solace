/// Server-driven reminder availability. The server decides when reminders fire;
/// the app only renders what the server says is available.
class ReminderAvailability {
  const ReminderAvailability({
    this.fridayReflection = false,
    this.weeklySummary = false,
  });

  final bool fridayReflection;
  final bool weeklySummary;
}
