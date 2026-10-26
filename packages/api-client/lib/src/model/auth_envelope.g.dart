// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthEnvelopeSuccessEnum _$authEnvelopeSuccessEnum_true_ =
    const AuthEnvelopeSuccessEnum._('true_');

AuthEnvelopeSuccessEnum _$authEnvelopeSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$authEnvelopeSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthEnvelopeSuccessEnum> _$authEnvelopeSuccessEnumValues =
    BuiltSet<AuthEnvelopeSuccessEnum>(const <AuthEnvelopeSuccessEnum>[
  _$authEnvelopeSuccessEnum_true_,
]);

Serializer<AuthEnvelopeSuccessEnum> _$authEnvelopeSuccessEnumSerializer =
    _$AuthEnvelopeSuccessEnumSerializer();

class _$AuthEnvelopeSuccessEnumSerializer
    implements PrimitiveSerializer<AuthEnvelopeSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthEnvelopeSuccessEnum];
  @override
  final String wireName = 'AuthEnvelopeSuccessEnum';

  @override
  Object serialize(Serializers serializers, AuthEnvelopeSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthEnvelopeSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthEnvelopeSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuthEnvelope extends AuthEnvelope {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$AuthEnvelope([void Function(AuthEnvelopeBuilder)? updates]) =>
      (AuthEnvelopeBuilder()..update(updates))._build();

  _$AuthEnvelope._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  AuthEnvelope rebuild(void Function(AuthEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthEnvelopeBuilder toBuilder() => AuthEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthEnvelope &&
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
    return (newBuiltValueToStringHelper(r'AuthEnvelope')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class AuthEnvelopeBuilder
    implements
        Builder<AuthEnvelope, AuthEnvelopeBuilder>,
        SuccessEnvelopeBuilder {
  _$AuthEnvelope? _$v;

  SuccessEnvelopeSuccessEnum? _success;
  SuccessEnvelopeSuccessEnum? get success => _$this._success;
  set success(covariant SuccessEnvelopeSuccessEnum? success) =>
      _$this._success = success;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(covariant JsonObject? data) => _$this._data = data;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(covariant DateTime? timestamp) => _$this._timestamp = timestamp;

  JsonObject? _error;
  JsonObject? get error => _$this._error;
  set error(covariant JsonObject? error) => _$this._error = error;

  AuthEnvelopeBuilder() {
    AuthEnvelope._defaults(this);
  }

  AuthEnvelopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data;
      _timestamp = $v.timestamp;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AuthEnvelope other) {
    _$v = other as _$AuthEnvelope;
  }

  @override
  void update(void Function(AuthEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthEnvelope build() => _build();

  _$AuthEnvelope _build() {
    final _$result = _$v ??
        _$AuthEnvelope._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'AuthEnvelope', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'AuthEnvelope', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
