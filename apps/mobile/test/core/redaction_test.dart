import 'package:solace/core/logging.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('each forbidden class is redacted', () {
    expect(redact('token access_token=abc'), contains('[REDACTED:tokens]'));
    expect(redact('email a@b.com'), contains('[REDACTED:email]'));
    expect(redact('journal text here'), contains('[REDACTED:journal]'));
    expect(redact('call +880 1712 345 678'), contains('[REDACTED:phone]'));
    expect(redact('suicidal thoughts'), contains('[REDACTED:health]'));
    expect(redact('device_id=abc'), contains('[REDACTED:deviceId]'));
  });
}
