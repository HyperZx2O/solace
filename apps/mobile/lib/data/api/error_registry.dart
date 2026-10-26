/// Registry that connects the contract's `ErrorCode` (re-exported from the
/// generated client) to the app's [FailureDetail].
///
/// Phase 2, task 2. The contract's enum is the single source of truth — this
/// file never re-declares it. A test in `test/contract/enum_parity_test.dart`
/// compares every generated value against the YAML.
library;

export 'package:between_api/between_api.dart' show ErrorCode;

import 'package:between_api/between_api.dart' as api;

import '../core/result.dart';

/// Maps a generated [api.ErrorCode] to a [FailureDetail]. Call sites pass the
/// message from the envelope; the code stays the contract's enum.
FailureDetail failureFromErrorCode(
  api.ErrorCode code, {
  required String message,
  Object? cause,
}) {
  return FailureDetail(code: code, message: message, cause: cause);
}

/// Convenience: does this code mean the caller must re-authenticate?
bool requiresReauth(api.ErrorCode code) =>
    code == api.ErrorCode.REAUTH_REQUIRED ||
    code == api.ErrorCode.UNAUTHENTICATED;

/// Codes that are safe to retry with the same `clientId` (idempotent).
const Set<api.ErrorCode> retryableCodes = {
  api.ErrorCode.RATE_LIMITED,
  api.ErrorCode.DEPENDENCY_UNAVAILABLE,
  api.ErrorCode.INTERNAL_ERROR,
};
