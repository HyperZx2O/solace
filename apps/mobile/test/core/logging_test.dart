import 'package:flutter_test/flutter_test.dart';
import 'package:solace/core/logging.dart';

void main() {
  test('journal text is redacted', () {
    final out = redact('saving journalText: things I cannot show');
    expect(out, contains('[REDACTED:journal]'));
    expect(out, isNot(contains('journalText')));
  });

  test('tokens are redacted', () {
    expect(
      redact('header access_token=abc.def'),
      contains('[REDACTED:tokens]'),
    );
    expect(redact('auth refresh_token xyz'), contains('[REDACTED:tokens]'));
  });

  test('emails are redacted', () {
    expect(
      redact('contact someone@example.com now'),
      contains('[REDACTED:email]'),
    );
    expect(redact('contact someone@example.com now'), isNot(contains('@')));
  });

  test('plain content survives untouched', () {
    expect(redact('Allen drops today'), 'Allen drops today');
  });

  test('rule list covers the plan redaction minimum', () {
    final names = redactionRules.map((r) => r.$1).toSet();
    expect(names, containsAll(['tokens', 'email']));
  });
}
