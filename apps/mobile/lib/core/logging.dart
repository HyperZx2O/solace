/// Redacted, debug-only logging.
library;

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
  ('phone', RegExp(r'\b\+?\d[\d\s-]{7,}\d\b')),
  (
    'health',
    RegExp(
      r'\b(?:suicid|self[- ]?harm|crisis|trauma|diagnos)\w*\b',
      caseSensitive: false,
    ),
  ),
  (
    'deviceId',
    RegExp(r'\b(?:device[_-]?id|android[_-]?id|imei)\b', caseSensitive: false),
  ),
];

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
  print('[$level][solace] ${redact(message)}');
}

const bool _isDebug = bool.fromEnvironment('dart.vm.product') == false;
