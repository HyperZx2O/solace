import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/env.dart';

/// Build-time environment.
final envProvider = Provider<Env>((ref) => Env.fromDefines());

/// Connectivity flag. Phase 5 replaces with connectivity_plus stream.
final isOnlineProvider = StateProvider<bool>((ref) => true);

/// Generic async state holder used by screens for loading/error/empty/offline.
enum ScreenState { loading, data, empty, error, offline }

class AsyncViewState<T> {
  const AsyncViewState.loading()
    : state = ScreenState.loading,
      data = null,
      error = null;
  const AsyncViewState.data(this.data) : state = ScreenState.data, error = null;
  const AsyncViewState.empty()
    : state = ScreenState.empty,
      data = null,
      error = null;
  const AsyncViewState.error(this.error)
    : state = ScreenState.error,
      data = null;
  const AsyncViewState.offline()
    : state = ScreenState.offline,
      data = null,
      error = null;

  final ScreenState state;
  final T? data;
  final Object? error;
}
