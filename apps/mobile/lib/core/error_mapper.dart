import 'package:solace_api/solace_api.dart' show ErrorCode;

/// Maps a contract `ErrorCode` (or any unknown value) to a copy key.
/// Unknown codes map to `error.generic`. Never returns a raw code.
String copyKeyForErrorCode(Object? code) {
  if (code is ErrorCode) {
    switch (code) {
      case ErrorCode.VALIDATION_FAILED:
        return 'error.validation_failed';
      case ErrorCode.UNAUTHENTICATED:
      case ErrorCode.REAUTH_REQUIRED:
        return 'error.unauthenticated';
      case ErrorCode.FORBIDDEN:
        return 'error.forbidden';
      case ErrorCode.CONSENT_REQUIRED:
        return 'error.consent_required';
      case ErrorCode.NOT_FOUND:
        return 'error.not_found';
      case ErrorCode.CONFLICT:
        return 'error.conflict';
      case ErrorCode.ALERT_STATE_INVALID:
        return 'error.alert_state_invalid';
      case ErrorCode.UNDO_WINDOW_CLOSED:
        return 'error.undo_window_closed';
      case ErrorCode.RATE_LIMITED:
        return 'error.rate_limited';
      case ErrorCode.DEPENDENCY_UNAVAILABLE:
        return 'error.dependency_unavailable';
      case ErrorCode.INTERNAL_ERROR:
        return 'error.internal';
    }
  }
  return 'error.generic';
}
