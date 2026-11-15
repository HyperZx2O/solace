/// Input validators (Phase 9/11). Pure functions, no side effects.
class Validators {
  const Validators._();

  static bool isAdultConfirmed(bool ticked) => ticked;

  static bool isValidEmail(String v) =>
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v.trim());

  static bool isValidPassword(String v) => v.length >= 8;

  static bool isNonEmpty(String v) => v.trim().isNotEmpty;

  static bool isLicenceValid(String v) => v.trim().length >= 4;
}
