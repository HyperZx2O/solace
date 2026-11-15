import 'package:local_auth/local_auth.dart';

class BiometricResult {
  const BiometricResult({required this.available, required this.authenticated});
  final bool available;
  final bool authenticated;
}

abstract class BiometricAdapter {
  Future<BiometricResult> authenticate({required String reason});
}

class LocalAuthAdapter implements BiometricAdapter {
  LocalAuthAdapter([LocalAuthentication? auth])
    : _auth = auth ?? LocalAuthentication();

  final LocalAuthentication _auth;

  @override
  Future<BiometricResult> authenticate({required String reason}) async {
    final available =
        await _auth.canCheckBiometrics || await _auth.isDeviceSupported();
    if (!available) {
      return const BiometricResult(available: false, authenticated: false);
    }
    final ok = await _auth.authenticate(localizedReason: reason);
    return BiometricResult(available: true, authenticated: ok);
  }
}

class FakeBiometricAdapter implements BiometricAdapter {
  FakeBiometricAdapter({this.available = true, this.authenticated = true});
  final bool available;
  final bool authenticated;

  @override
  Future<BiometricResult> authenticate({required String reason}) async =>
      BiometricResult(available: available, authenticated: authenticated);
}
