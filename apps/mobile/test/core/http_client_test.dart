import 'package:solace/config/env.dart';
import 'package:solace/core/http_client.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('crisis client has 5s receive timeout', () {
    final env = Env.fromValues({
      'API_BASE_URL': 'https://example.org',
      'APP_ENV': 'dev',
    });
    final dio = HttpClient(env).create(crisis: true);
    expect(dio.options.receiveTimeout, const Duration(seconds: 5));
    expect(dio.options.connectTimeout, const Duration(seconds: 10));
  });

  test('normal client has 10s receive timeout', () {
    final env = Env.fromValues({
      'API_BASE_URL': 'https://example.org',
      'APP_ENV': 'dev',
    });
    final dio = HttpClient(env).create();
    expect(dio.options.receiveTimeout, const Duration(seconds: 10));
  });
}
