import 'package:between/core/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Success carries the value and reports success', () {
    const Result<int> result = Success(3);
    expect(result.isSuccess, isTrue);
    expect(result.valueOrNull, 3);
  });

  test('Failure exposes the detail and hides the value', () {
    const Result<int> result = Failure(
      FailureDetail(code: null, message: 'offline'),
    );
    expect(result.isSuccess, isFalse);
    expect(result.valueOrNull, isNull);
  });

  test('sealed hierarchy can be switched exhaustively', () {
    String label(Result<bool> r) => switch (r) {
          Success(value: final v) => 'ok:$v',
          Failure(detail: final d) => 'bad:${d.code?.name ?? 'offline'}',
        };
    expect(label(const Success(true)), 'ok:true');
    expect(
      label(const Failure(FailureDetail(message: 'x', cause: 'suppressed'))),
      'bad:offline',
    );
  });

  test('FailureDetail toString never renders the cause', () {
    const fakeCode = _TestCode.rateLimited;
    final d = FailureDetail(code: fakeCode, message: 'slow down', cause: StateError('secret'));
    expect(d.toString(), isNot(contains('secret')));
    expect(d.toString(), contains('rateLimited'));
  });
}

// Any enum satisfies FailureDetail.code until the generated ErrorCode exists.
enum _TestCode { rateLimited }
