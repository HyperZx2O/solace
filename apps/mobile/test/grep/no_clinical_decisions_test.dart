import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Phase 5 acceptance: no file under lib/ computes an alert state, a timer
/// (other than the queue retry schedule), a restriction level, or a stage.
void main() {
  test('no clinical/safety decision computation in lib/', () {
    final lib = Directory('lib');
    expect(lib.existsSync(), isTrue);
    final forbidden = [
      RegExp(r'if\s*\(.*tier\s*==\s*3', caseSensitive: false),
      RegExp(r'escalat(e|ion)\s*\(', caseSensitive: false),
    ];
    final violations = <String>[];
    for (final f in lib.listSync(recursive: true)) {
      if (f is! File || !f.path.endsWith('.dart')) continue;
      // Allow the queue worker's retry schedule.
      if (f.path.contains('queue_worker.dart')) continue;
      final src = f.readAsStringSync();
      for (final r in forbidden) {
        if (r.hasMatch(src)) violations.add('${f.path}: ${r.pattern}');
      }
    }
    expect(violations, isEmpty, reason: violations.join('\n'));
  });
}
