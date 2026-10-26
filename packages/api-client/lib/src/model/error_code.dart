//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_code.g.dart';

class ErrorCode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'VALIDATION_FAILED')
  static const ErrorCode VALIDATION_FAILED = _$VALIDATION_FAILED;
  @BuiltValueEnumConst(wireName: r'UNAUTHENTICATED')
  static const ErrorCode UNAUTHENTICATED = _$UNAUTHENTICATED;
  @BuiltValueEnumConst(wireName: r'REAUTH_REQUIRED')
  static const ErrorCode REAUTH_REQUIRED = _$REAUTH_REQUIRED;
  @BuiltValueEnumConst(wireName: r'FORBIDDEN')
  static const ErrorCode FORBIDDEN = _$FORBIDDEN;
  @BuiltValueEnumConst(wireName: r'CONSENT_REQUIRED')
  static const ErrorCode CONSENT_REQUIRED = _$CONSENT_REQUIRED;
  @BuiltValueEnumConst(wireName: r'NOT_FOUND')
  static const ErrorCode NOT_FOUND = _$NOT_FOUND;
  @BuiltValueEnumConst(wireName: r'CONFLICT')
  static const ErrorCode CONFLICT = _$CONFLICT;
  @BuiltValueEnumConst(wireName: r'ALERT_STATE_INVALID')
  static const ErrorCode ALERT_STATE_INVALID = _$ALERT_STATE_INVALID;
  @BuiltValueEnumConst(wireName: r'UNDO_WINDOW_CLOSED')
  static const ErrorCode UNDO_WINDOW_CLOSED = _$UNDO_WINDOW_CLOSED;
  @BuiltValueEnumConst(wireName: r'RATE_LIMITED')
  static const ErrorCode RATE_LIMITED = _$RATE_LIMITED;
  @BuiltValueEnumConst(wireName: r'DEPENDENCY_UNAVAILABLE')
  static const ErrorCode DEPENDENCY_UNAVAILABLE = _$DEPENDENCY_UNAVAILABLE;
  @BuiltValueEnumConst(wireName: r'INTERNAL_ERROR')
  static const ErrorCode INTERNAL_ERROR = _$INTERNAL_ERROR;

  static Serializer<ErrorCode> get serializer => _$errorCodeSerializer;

  const ErrorCode._(String name): super(name);

  static BuiltSet<ErrorCode> get values => _$values;
  static ErrorCode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ErrorCodeMixin = Object with _$ErrorCodeMixin;

