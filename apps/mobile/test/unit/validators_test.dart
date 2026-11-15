import 'package:solace/core/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('age: ticked required', () {
    expect(Validators.isAdultConfirmed(true), isTrue);
    expect(Validators.isAdultConfirmed(false), isFalse);
  });
  test('email validation', () {
    expect(Validators.isValidEmail('a@b.com'), isTrue);
    expect(Validators.isValidEmail('nope'), isFalse);
    expect(Validators.isValidEmail(''), isFalse);
  });
  test('password min length 8', () {
    expect(Validators.isValidPassword('12345678'), isTrue);
    expect(Validators.isValidPassword('short'), isFalse);
  });
  test('non-empty', () {
    expect(Validators.isNonEmpty('  x  '), isTrue);
    expect(Validators.isNonEmpty('   '), isFalse);
  });
  test('licence min length 4', () {
    expect(Validators.isLicenceValid('ABCD'), isTrue);
    expect(Validators.isLicenceValid('AB'), isFalse);
  });
}
