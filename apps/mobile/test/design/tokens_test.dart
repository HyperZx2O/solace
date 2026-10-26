import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// F-ADR-4 gate: every token in `packages/design-tokens/tokens.json` has a
/// generated Dart constant in `lib/design/tokens.g.dart`.
void main() {
  final tokensFile = File('../../packages/design-tokens/tokens.json');
  final dartFile = File('lib/design/tokens.g.dart');

  test('token sources exist', () {
    expect(tokensFile.existsSync(), isTrue, reason: 'tokens.json not found');
    expect(
      dartFile.existsSync(),
      isTrue,
      reason: 'tokens.g.dart not generated',
    );
  });

  test('every JSON token has a Dart constant of the mapped type', () {
    final json =
        jsonDecode(tokensFile.readAsStringSync()) as Map<String, dynamic>;
    final dart = dartFile.readAsStringSync();
    String constNameOf(String key) => key.replaceAll('-', '_');

    json.forEach((key, node) {
      if (key == 'meta') return;
      final type = ((node as Map<String, dynamic>)['\$type'] ?? '') as String;
      final name = constNameOf(key);
      switch (type) {
        case 'color':
          expect(
            dart,
            contains(RegExp('$name = Color\\(0[xX][0-9A-Fa-f]{8}\\)')),
            reason: 'colour constant for $key',
          );
          break;
        case 'duration':
          expect(
            dart,
            contains('const Duration $name'),
            reason: 'duration constant for $key',
          );
          break;
        case 'cubicBezier':
          expect(
            dart,
            contains('const Cubic $name'),
            reason: 'Cubic constant for $key',
          );
          break;
        case 'dimension':
          expect(
            dart,
            contains('const double $name'),
            reason: 'double constant for $key',
          );
          break;
        default:
          fail('No Dart mapping for token $key (type: $type)');
      }
    });

    expect(json.keys, contains('hero-base'));
    expect(json.keys, contains('glass-fill'));
    expect(
      json.keys.where((k) => k.startsWith('--')),
      isEmpty,
      reason: 'keys stored without the CSS -- prefix',
    );
  });
}
