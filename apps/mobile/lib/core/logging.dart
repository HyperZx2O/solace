/// Redacted, debug-only logging.
///
/// Global rule 5: never log health content, names, emails, tokens, journal
/// text. No third-party analytics. Release builds take zero log lines.
library;

/// Any match is replaced with `[REDACTED:<rule>]`.
///
/// Draft baseline — grow this list through review, and never log a value just
/// because it is not on the list. : shortcut: pattern list minimal for Phase 1
/// redaction test; expand per Phase 9 error-mapping review.
final List<(String, RegExp)> redactionRules = [
  (
    'tokens',
    RegExp(
      r'\b(?:access_?token|refresh_?token|"?Authorization"?\s*:\s*"?[A-Za-z0-9._-]+)\b',
      caseSensitive: false,
    ),
  ),
  ('email', RegExp(r'\b[\w.+-]+@[\w-]+\.[\w.-]+\b')),
  (
    'journal',
    RegExp(
      r'\b(?:journal[_ ]?text|journal[_ ]?entry[_ ]?content)\b',
      caseSensitive: false,
    ),
  ),
];

/// Every outgoing log line goes through here. Runs in every build so tests can
/// exercise it; the writer itself is stripped in release builds.
String redact(String message) {
  var out = message;
  for (final (name, rule) in redactionRules) {
    out = out.replaceAllMapped(rule, (_) => '[REDACTED:$name]');
  }
  return out;
}

void logInfo(String message) => _write('INFO', message);

void logWarn(String message) => _write('WARN', message);

void logError(String message) => _write('ERROR', message);

void _write(String level, String message) {
  if (!_isDebug) return;
  // ignore: avoid_print
  print('[$level][between] ${redact(message)}');
}

const bool _isDebug = bool.fromEnvironment('dart.vm.product') == false;
