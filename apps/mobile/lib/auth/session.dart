import 'package:solace_api/solace_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/api/auth_interceptor.dart';
import '../data/local/database.dart';
import '../secure/token_store.dart';

enum AppRole { patient, therapist, unknown }

class AuthSession {
  AuthSession({required this.tokenStore, required this.dio}) {
    api = AuthApi(dio, serializers);
  }

  /// Local demo account. Never hits the network.
  static const demoEmail = 'demo@solace.app';
  static const demoPassword = 'solace';

  final TokenStore tokenStore;
  final Dio dio;
  late final AuthApi api;

  AppRole role = AppRole.unknown;
  String? userId;
  bool expired = false;
  bool isDemo = false;

  /// Enters the placeholder app as the demo patient or therapist.
  void enterDemo({AppRole role = AppRole.patient}) {
    isDemo = true;
    expired = false;
    userId = role == AppRole.therapist ? 'demo-therapist' : 'demo-patient';
    this.role = role;
  }

  /// Leaves demo mode without touching the server.
  void leaveDemo() {
    isDemo = false;
    expired = false;
    userId = null;
    role = AppRole.unknown;
  }

  Future<bool> login(String email, String password) async {
    if (email == demoEmail && password == demoPassword) {
      enterDemo();
      return true;
    }
    expired = false;
    final res = await api.login(
      loginRequest: LoginRequest(
        (b) => b
          ..email = email
          ..password = password,
      ),
    );
    final tokens = serializers.deserializeWith(
      AuthTokens.serializer,
      res.data?.data,
    );
    if (tokens != null) {
      await tokenStore.writeTokens(
        accessToken: tokens.accessToken,
        refreshToken: tokens.refreshToken,
      );
      await _fetchRole();
      return true;
    }
    return false;
  }

  Future<bool> signup(String email, String password) async {
    expired = false;
    final res = await api.signup(
      signupRequest: SignupRequest(
        (b) => b
          ..email = email
          ..password = password,
      ),
    );
    final tokens = serializers.deserializeWith(
      AuthTokens.serializer,
      res.data?.data,
    );
    if (tokens != null) {
      await tokenStore.writeTokens(
        accessToken: tokens.accessToken,
        refreshToken: tokens.refreshToken,
      );
      await _fetchRole();
      return true;
    }
    return false;
  }

  Future<void> _fetchRole() async {
    try {
      final res = await api.getMe();
      final me = serializers.deserializeWith(Me.serializer, res.data?.data);
      if (me != null) {
        userId = me.id;
        role = me.role == Role.therapist ? AppRole.therapist : AppRole.patient;
      }
    } catch (_) {
      role = AppRole.unknown;
    }
  }

  Future<void> logout({AppDatabase? database}) async {
    try {
      await api.logout();
    } catch (_) {}
    await tokenStore.clear();
    await database?.deleteFile();
    role = AppRole.unknown;
    userId = null;
    expired = false;
  }
}

final tokenStoreProvider = Provider<TokenStore>((ref) => TokenStore());

final authSessionProvider = Provider<AuthSession>((ref) {
  final store = ref.watch(tokenStoreProvider);
  final dio = Dio();
  final session = AuthSession(tokenStore: store, dio: dio);
  final interceptor = AuthInterceptor(
    tokenStore: store,
    refresh: (rt) async {
      final res = await session.api.refresh(
        refreshRequest: RefreshRequest((b) => b..refreshToken = rt),
      );
      final tokens = serializers.deserializeWith(
        AuthTokens.serializer,
        res.data?.data,
      );
      return tokens?.accessToken;
    },
    onSessionExpired: () {
      session.expired = true;
      store.clear();
    },
  );
  dio.interceptors.add(interceptor);
  return session;
});
