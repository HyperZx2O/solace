// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ErrorCode _$VALIDATION_FAILED = const ErrorCode._('VALIDATION_FAILED');
const ErrorCode _$UNAUTHENTICATED = const ErrorCode._('UNAUTHENTICATED');
const ErrorCode _$REAUTH_REQUIRED = const ErrorCode._('REAUTH_REQUIRED');
const ErrorCode _$FORBIDDEN = const ErrorCode._('FORBIDDEN');
const ErrorCode _$CONSENT_REQUIRED = const ErrorCode._('CONSENT_REQUIRED');
const ErrorCode _$NOT_FOUND = const ErrorCode._('NOT_FOUND');
const ErrorCode _$CONFLICT = const ErrorCode._('CONFLICT');
const ErrorCode _$ALERT_STATE_INVALID =
    const ErrorCode._('ALERT_STATE_INVALID');
const ErrorCode _$UNDO_WINDOW_CLOSED = const ErrorCode._('UNDO_WINDOW_CLOSED');
const ErrorCode _$RATE_LIMITED = const ErrorCode._('RATE_LIMITED');
const ErrorCode _$DEPENDENCY_UNAVAILABLE =
    const ErrorCode._('DEPENDENCY_UNAVAILABLE');
const ErrorCode _$INTERNAL_ERROR = const ErrorCode._('INTERNAL_ERROR');

ErrorCode _$valueOf(String name) {
  switch (name) {
    case 'VALIDATION_FAILED':
      return _$VALIDATION_FAILED;
    case 'UNAUTHENTICATED':
      return _$UNAUTHENTICATED;
    case 'REAUTH_REQUIRED':
      return _$REAUTH_REQUIRED;
    case 'FORBIDDEN':
      return _$FORBIDDEN;
    case 'CONSENT_REQUIRED':
      return _$CONSENT_REQUIRED;
    case 'NOT_FOUND':
      return _$NOT_FOUND;
    case 'CONFLICT':
      return _$CONFLICT;
    case 'ALERT_STATE_INVALID':
      return _$ALERT_STATE_INVALID;
    case 'UNDO_WINDOW_CLOSED':
      return _$UNDO_WINDOW_CLOSED;
    case 'RATE_LIMITED':
      return _$RATE_LIMITED;
    case 'DEPENDENCY_UNAVAILABLE':
      return _$DEPENDENCY_UNAVAILABLE;
    case 'INTERNAL_ERROR':
      return _$INTERNAL_ERROR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ErrorCode> _$values = BuiltSet<ErrorCode>(const <ErrorCode>[
  _$VALIDATION_FAILED,
  _$UNAUTHENTICATED,
  _$REAUTH_REQUIRED,
  _$FORBIDDEN,
  _$CONSENT_REQUIRED,
  _$NOT_FOUND,
  _$CONFLICT,
  _$ALERT_STATE_INVALID,
  _$UNDO_WINDOW_CLOSED,
  _$RATE_LIMITED,
  _$DEPENDENCY_UNAVAILABLE,
  _$INTERNAL_ERROR,
]);

class _$ErrorCodeMeta {
  const _$ErrorCodeMeta();
  ErrorCode get VALIDATION_FAILED => _$VALIDATION_FAILED;
  ErrorCode get UNAUTHENTICATED => _$UNAUTHENTICATED;
  ErrorCode get REAUTH_REQUIRED => _$REAUTH_REQUIRED;
  ErrorCode get FORBIDDEN => _$FORBIDDEN;
  ErrorCode get CONSENT_REQUIRED => _$CONSENT_REQUIRED;
  ErrorCode get NOT_FOUND => _$NOT_FOUND;
  ErrorCode get CONFLICT => _$CONFLICT;
  ErrorCode get ALERT_STATE_INVALID => _$ALERT_STATE_INVALID;
  ErrorCode get UNDO_WINDOW_CLOSED => _$UNDO_WINDOW_CLOSED;
  ErrorCode get RATE_LIMITED => _$RATE_LIMITED;
  ErrorCode get DEPENDENCY_UNAVAILABLE => _$DEPENDENCY_UNAVAILABLE;
  ErrorCode get INTERNAL_ERROR => _$INTERNAL_ERROR;
  ErrorCode valueOf(String name) => _$valueOf(name);
  BuiltSet<ErrorCode> get values => _$values;
}

abstract class _$ErrorCodeMixin {
  // ignore: non_constant_identifier_names
  _$ErrorCodeMeta get ErrorCode => const _$ErrorCodeMeta();
}

Serializer<ErrorCode> _$errorCodeSerializer = _$ErrorCodeSerializer();

class _$ErrorCodeSerializer implements PrimitiveSerializer<ErrorCode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'VALIDATION_FAILED': 'VALIDATION_FAILED',
    'UNAUTHENTICATED': 'UNAUTHENTICATED',
    'REAUTH_REQUIRED': 'REAUTH_REQUIRED',
    'FORBIDDEN': 'FORBIDDEN',
    'CONSENT_REQUIRED': 'CONSENT_REQUIRED',
    'NOT_FOUND': 'NOT_FOUND',
    'CONFLICT': 'CONFLICT',
    'ALERT_STATE_INVALID': 'ALERT_STATE_INVALID',
    'UNDO_WINDOW_CLOSED': 'UNDO_WINDOW_CLOSED',
    'RATE_LIMITED': 'RATE_LIMITED',
    'DEPENDENCY_UNAVAILABLE': 'DEPENDENCY_UNAVAILABLE',
    'INTERNAL_ERROR': 'INTERNAL_ERROR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VALIDATION_FAILED': 'VALIDATION_FAILED',
    'UNAUTHENTICATED': 'UNAUTHENTICATED',
    'REAUTH_REQUIRED': 'REAUTH_REQUIRED',
    'FORBIDDEN': 'FORBIDDEN',
    'CONSENT_REQUIRED': 'CONSENT_REQUIRED',
    'NOT_FOUND': 'NOT_FOUND',
    'CONFLICT': 'CONFLICT',
    'ALERT_STATE_INVALID': 'ALERT_STATE_INVALID',
    'UNDO_WINDOW_CLOSED': 'UNDO_WINDOW_CLOSED',
    'RATE_LIMITED': 'RATE_LIMITED',
    'DEPENDENCY_UNAVAILABLE': 'DEPENDENCY_UNAVAILABLE',
    'INTERNAL_ERROR': 'INTERNAL_ERROR',
  };

  @override
  final Iterable<Type> types = const <Type>[ErrorCode];
  @override
  final String wireName = 'ErrorCode';

  @override
  Object serialize(Serializers serializers, ErrorCode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ErrorCode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ErrorCode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
