import 'package:dio/dio.dart';

import '../config/env.dart';

/// Dio factory with timeouts. Crisis requests use a shorter receive timeout.
class HttpClient {
  HttpClient(this.env);

  final Env env;

  Dio create({bool crisis = false}) {
    return Dio(
      BaseOptions(
        baseUrl: env.apiBaseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: Duration(seconds: crisis ? 5 : 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );
  }
}
