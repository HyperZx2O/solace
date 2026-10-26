// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_device201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegisterDevice201ResponseSuccessEnum
    _$registerDevice201ResponseSuccessEnum_true_ =
    const RegisterDevice201ResponseSuccessEnum._('true_');

RegisterDevice201ResponseSuccessEnum
    _$registerDevice201ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$registerDevice201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegisterDevice201ResponseSuccessEnum>
    _$registerDevice201ResponseSuccessEnumValues = BuiltSet<
        RegisterDevice201ResponseSuccessEnum>(const <RegisterDevice201ResponseSuccessEnum>[
  _$registerDevice201ResponseSuccessEnum_true_,
]);

Serializer<RegisterDevice201ResponseSuccessEnum>
    _$registerDevice201ResponseSuccessEnumSerializer =
    _$RegisterDevice201ResponseSuccessEnumSerializer();

class _$RegisterDevice201ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<RegisterDevice201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RegisterDevice201ResponseSuccessEnum
  ];
  @override
  final String wireName = 'RegisterDevice201ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, RegisterDevice201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RegisterDevice201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RegisterDevice201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RegisterDevice201Response extends RegisterDevice201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$RegisterDevice201Response(
          [void Function(RegisterDevice201ResponseBuilder)? updates]) =>
      (RegisterDevice201ResponseBuilder()..update(updates))._build();

  _$RegisterDevice201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  RegisterDevice201Response rebuild(
          void Function(RegisterDevice201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterDevice201ResponseBuilder toBuilder() =>
      RegisterDevice201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterDevice201Response &&
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
    return (newBuiltValueToStringHelper(r'RegisterDevice201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class RegisterDevice201ResponseBuilder
    implements
        Builder<RegisterDevice201Response, RegisterDevice201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$RegisterDevice201Response? _$v;

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

  RegisterDevice201ResponseBuilder() {
    RegisterDevice201Response._defaults(this);
  }

  RegisterDevice201ResponseBuilder get _$this {
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
  void replace(covariant RegisterDevice201Response other) {
    _$v = other as _$RegisterDevice201Response;
  }

  @override
  void update(void Function(RegisterDevice201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterDevice201Response build() => _build();

  _$RegisterDevice201Response _build() {
    final _$result = _$v ??
        _$RegisterDevice201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'RegisterDevice201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'RegisterDevice201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
