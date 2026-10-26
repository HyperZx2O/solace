/// Non-secret build-time configuration, read from `--dart-define` (Global rule 4).
///
/// The app has no secrets: anything sensitive stays on the server. Debug builds
/// fail fast on a missing or invalid required value (Phase 1 task 5); release
/// builds always launch.
library;

const _defineApiBaseUrl = String.fromEnvironment('API_BASE_URL');
const _defineAppEnv = String.fromEnvironment('APP_ENV');
const _defineAppVersion = String.fromEnvironment('APP_VERSION');
const _defineUpdateManifestUrl = String.fromEnvironment('UPDATE_MANIFEST_URL');
const _defineResourcesVerifiedAt = String.fromEnvironment(
  'RESOURCES_VERIFIED_AT',
);

class Env {
  const Env({
    required this.apiBaseUrl,
    required this.appEnvironment,
    required this.appVersion,
    this.updateManifestUrl,
    this.resourcesVerifiedAt,
  });

  static const apiBaseUrlKey = 'API_BASE_URL';
  static const appEnvKey = 'APP_ENV';
  static const appVersionKey = 'APP_VERSION';
  static const updateManifestUrlKey = 'UPDATE_MANIFEST_URL';
  static const resourcesVerifiedAtKey = 'RESOURCES_VERIFIED_AT';

  /// Backend base URL for the active environment.
  final String apiBaseUrl;

  /// `dev`, `staging` or `prod`.
  final String appEnvironment;

  /// Shown in Settings, sent in device registration.
  final String appVersion;

  /// FD-8: static version manifest; unset (`null`) disables the update notice.
  final String? updateManifestUrl;

  /// Verification date of the bundled crisis resources (`null` = not verified).
  final String? resourcesVerifiedAt;

  /// Debug-only startup blockers. Empty = valid environment.
  List<String> debugProblems() {
    final problems = <String>[];
    if (Uri.tryParse(apiBaseUrl) == null || apiBaseUrl.isEmpty) {
      problems.add('$apiBaseUrlKey is required and must be a valid URI');
    }
    const validEnvironments = {'dev', 'staging', 'prod'};
    if (!validEnvironments.contains(appEnvironment)) {
      problems.add('$appEnvKey must be one of dev|staging|prod');
    }
    return problems;
  }

  /// Reads the real compile-time defines (empty string = absent).
  static Env fromDefines() => Env(
    apiBaseUrl: _defineApiBaseUrl,
    appEnvironment: _defineAppEnv.isEmpty ? 'dev' : _defineAppEnv,
    appVersion: _defineAppVersion.isEmpty ? '1.0.0' : _defineAppVersion,
    updateManifestUrl: _defineUpdateManifestUrl.isEmpty
        ? null
        : _defineUpdateManifestUrl,
    resourcesVerifiedAt: _defineResourcesVerifiedAt.isEmpty
        ? null
        : _defineResourcesVerifiedAt,
  );

  /// Test seam: build from explicit values.
  factory Env.fromValues(Map<String, String> values) {
    String? read(String key) {
      final v = values[key];
      return (v == null || v.isEmpty) ? null : v;
    }

    return Env(
      apiBaseUrl: read(apiBaseUrlKey) ?? '',
      appEnvironment: read(appEnvKey) ?? 'dev',
      appVersion: read(appVersionKey) ?? '1.0.0',
      updateManifestUrl: read(updateManifestUrlKey),
      resourcesVerifiedAt: read(resourcesVerifiedAtKey),
    );
  }
}
