// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ErrorEnvelopeSuccessEnum _$errorEnvelopeSuccessEnum_false_ =
    const ErrorEnvelopeSuccessEnum._('false_');

ErrorEnvelopeSuccessEnum _$errorEnvelopeSuccessEnumValueOf(String name) {
  switch (name) {
    case 'false_':
      return _$errorEnvelopeSuccessEnum_false_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ErrorEnvelopeSuccessEnum> _$errorEnvelopeSuccessEnumValues =
    BuiltSet<ErrorEnvelopeSuccessEnum>(const <ErrorEnvelopeSuccessEnum>[
  _$errorEnvelopeSuccessEnum_false_,
]);

Serializer<ErrorEnvelopeSuccessEnum> _$errorEnvelopeSuccessEnumSerializer =
    _$ErrorEnvelopeSuccessEnumSerializer();

class _$ErrorEnvelopeSuccessEnumSerializer
    implements PrimitiveSerializer<ErrorEnvelopeSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'false_': 'false',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'false': 'false_',
  };

  @override
  final Iterable<Type> types = const <Type>[ErrorEnvelopeSuccessEnum];
  @override
  final String wireName = 'ErrorEnvelopeSuccessEnum';

  @override
  Object serialize(Serializers serializers, ErrorEnvelopeSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ErrorEnvelopeSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ErrorEnvelopeSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ErrorEnvelope extends ErrorEnvelope {
  @override
  final ErrorEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final ErrorEnvelopeError error;

  factory _$ErrorEnvelope([void Function(ErrorEnvelopeBuilder)? updates]) =>
      (ErrorEnvelopeBuilder()..update(updates))._build();

  _$ErrorEnvelope._(
      {required this.success,
      this.data,
      required this.timestamp,
      required this.error})
      : super._();
  @override
  ErrorEnvelope rebuild(void Function(ErrorEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorEnvelopeBuilder toBuilder() => ErrorEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorEnvelope &&
        success == other.success &&
        data == other.data &&
        timestamp == other.timestamp &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorEnvelope')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ErrorEnvelopeBuilder
    implements Builder<ErrorEnvelope, ErrorEnvelopeBuilder> {
  _$ErrorEnvelope? _$v;

  ErrorEnvelopeSuccessEnum? _success;
  ErrorEnvelopeSuccessEnum? get success => _$this._success;
  set success(ErrorEnvelopeSuccessEnum? success) => _$this._success = success;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  ErrorEnvelopeErrorBuilder? _error;
  ErrorEnvelopeErrorBuilder get error =>
      _$this._error ??= ErrorEnvelopeErrorBuilder();
  set error(ErrorEnvelopeErrorBuilder? error) => _$this._error = error;

  ErrorEnvelopeBuilder() {
    ErrorEnvelope._defaults(this);
  }

  ErrorEnvelopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data;
      _timestamp = $v.timestamp;
      _error = $v.error.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorEnvelope other) {
    _$v = other as _$ErrorEnvelope;
  }

  @override
  void update(void Function(ErrorEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorEnvelope build() => _build();

  _$ErrorEnvelope _build() {
    _$ErrorEnvelope _$result;
    try {
      _$result = _$v ??
          _$ErrorEnvelope._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ErrorEnvelope', 'success'),
            data: data,
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'ErrorEnvelope', 'timestamp'),
            error: error.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ErrorEnvelope', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
