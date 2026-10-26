/// Result wrapper used by every repository (plan Phase 2, task 1).
///
/// Repositories never throw past this boundary: every generated-client
/// exception becomes a [Failure] result. [FailureDetail.code] is the
/// contract's `ErrorCode` straight from the generated client — `null` means
/// the failure happened before an envelope existed (offline, timeout,
/// malformed response, unknown enum value).
library;

sealed class Result<T> {
  const Result();

  bool get isSuccess => this is Success<T>;

  T? get valueOrNull => switch (this) {
        Success(value: final value) => value,
        Failure() => null,
      };
}

final class Success<T> extends Result<T> {
  const Success(this.value);

  final T value;
}

final class Failure<T> extends Result<T> {
  const Failure(this.detail);

  final FailureDetail detail;
}

class FailureDetail {
  const FailureDetail({
    required this.message,
    this.code,
    this.cause,
  });

  /// Contract `ErrorCode` from the generated client, or `null` when no
  /// envelope was ever received (network down, deserialisation failed,
  /// unparseable body). Typed as [Object] because the generated enum is a
  /// built_value `EnumClass`, not a Dart `enum`.
  final Object? code;

  /// Short, non-clinical description. Never contains request or response
  /// bodies (Global rule 5).
  final String message;

  /// Original exception for diagnostics. **Never logged as content.**
  final Object? cause;

  @override
  String toString() => 'Failure(${code ?? 'offline'}, $message)';
}
