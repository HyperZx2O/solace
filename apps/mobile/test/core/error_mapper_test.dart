import 'package:solace/core/error_mapper.dart';
import 'package:solace_api/solace_api.dart' show ErrorCode;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every ErrorCode maps to a copy key, never a raw code', () {
    for (final c in ErrorCode.values) {
      final key = copyKeyForErrorCode(c);
      expect(key, startsWith('error.'));
      expect(key, isNot(contains(c.name)));
    }
  });

  test('unknown code maps to generic', () {
    expect(copyKeyForErrorCode(null), 'error.generic');
    expect(copyKeyForErrorCode('RANDOM'), 'error.generic');
  });
}
