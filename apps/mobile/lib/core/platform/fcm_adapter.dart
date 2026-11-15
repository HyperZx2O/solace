/// FCM adapter. Real implementation requires firebase_messaging + a Firebase
/// project (google-services.json). Until that is configured, the app uses the
/// no-op adapter and falls back to fetch-on-open.
abstract class FcmAdapter {
  Future<String?> registerToken();
  void onMessage(void Function(Map<String, dynamic> payload) handler);
}

class NoOpFcmAdapter implements FcmAdapter {
  @override
  Future<String?> registerToken() async => null;
  @override
  void onMessage(void Function(Map<String, dynamic> payload) handler) {}
}

class FakeFcmAdapter implements FcmAdapter {
  String? token;
  void Function(Map<String, dynamic>)? handler;
  @override
  Future<String?> registerToken() async => token ?? 'fake-token';
  @override
  void onMessage(void Function(Map<String, dynamic> payload) handler) {
    this.handler = handler;
  }
}
