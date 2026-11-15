import 'package:dio/dio.dart';

import '../../secure/token_store.dart';

/// Attaches the access token and refreshes on 401. The refresh call is a
/// single retry; on failure the session is cleared (caller re-routes to login).
class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this.tokenStore,
    required this.refresh,
    required this.onSessionExpired,
  });

  final TokenStore tokenStore;
  final Future<String?> Function(String refreshToken) refresh;
  final void Function() onSessionExpired;

  bool _refreshing = false;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await tokenStore.readAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final status = err.response?.statusCode;
    final alreadyRetried = err.requestOptions.extra['retried'] == true;
    if (status != 401 || alreadyRetried || _refreshing) {
      handler.next(err);
      return;
    }
    _refreshing = true;
    try {
      final refreshTok = await tokenStore.readRefreshToken();
      if (refreshTok == null || refreshTok.isEmpty) {
        onSessionExpired();
        handler.next(err);
        return;
      }
      final newAccess = await refresh(refreshTok);
      if (newAccess == null || newAccess.isEmpty) {
        onSessionExpired();
        handler.next(err);
        return;
      }
      await tokenStore.writeTokens(
        accessToken: newAccess,
        refreshToken: refreshTok,
      );
      final opts = err.requestOptions;
      opts.headers['Authorization'] = 'Bearer $newAccess';
      opts.extra['retried'] = true;
      final res = await Dio().fetch(opts);
      handler.resolve(res);
    } catch (_) {
      onSessionExpired();
      handler.next(err);
    } finally {
      _refreshing = false;
    }
  }
}
