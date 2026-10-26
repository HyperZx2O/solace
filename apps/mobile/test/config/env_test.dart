import 'package:flutter_test/flutter_test.dart';
import 'package:between/config/env.dart';

void main() {
  test('valid values produce no debug problems', () {
    final env = Env.fromValues({
      Env.apiBaseUrlKey: 'https://api.example.org',
      Env.appEnvKey: 'staging',
    });
    expect(env.debugProblems(), isEmpty);
    expect(env.appEnvironment, 'staging');
  });

  test('missing API_BASE_URL is a debug blocker', () {
    final env = Env.fromValues({Env.appEnvKey: 'dev'});
    expect(env.debugProblems(), isNotEmpty);
    expect(env.debugProblems().join(), contains('API_BASE_URL'));
  });

  test('invalid app environment is a debug blocker', () {
    final env = Env.fromValues({
      Env.apiBaseUrlKey: 'https://api.example.org',
      Env.appEnvKey: 'qa',
    });
    expect(env.debugProblems().join(), contains('APP_ENV'));
  });

  test('unset optional values become null, not empty strings', () {
    final env = Env.fromValues({
      Env.apiBaseUrlKey: 'https://api.example.org',
      Env.appEnvKey: 'prod',
    });
    expect(env.updateManifestUrl, isNull);
    expect(env.resourcesVerifiedAt, isNull);
  });

  test('malformed API base URL is rejected', () {
    final env = Env.fromValues({Env.apiBaseUrlKey: '::not-a-uri'});
    expect(env.debugProblems(), isNotEmpty);
  });
}
