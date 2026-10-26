// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_consent200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SetConsent200ResponseSuccessEnum
    _$setConsent200ResponseSuccessEnum_true_ =
    const SetConsent200ResponseSuccessEnum._('true_');

SetConsent200ResponseSuccessEnum _$setConsent200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$setConsent200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SetConsent200ResponseSuccessEnum>
    _$setConsent200ResponseSuccessEnumValues = BuiltSet<
        SetConsent200ResponseSuccessEnum>(const <SetConsent200ResponseSuccessEnum>[
  _$setConsent200ResponseSuccessEnum_true_,
]);

Serializer<SetConsent200ResponseSuccessEnum>
    _$setConsent200ResponseSuccessEnumSerializer =
    _$SetConsent200ResponseSuccessEnumSerializer();

class _$SetConsent200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<SetConsent200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[SetConsent200ResponseSuccessEnum];
  @override
  final String wireName = 'SetConsent200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, SetConsent200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SetConsent200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SetConsent200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SetConsent200Response extends SetConsent200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$SetConsent200Response(
          [void Function(SetConsent200ResponseBuilder)? updates]) =>
      (SetConsent200ResponseBuilder()..update(updates))._build();

  _$SetConsent200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  SetConsent200Response rebuild(
          void Function(SetConsent200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetConsent200ResponseBuilder toBuilder() =>
      SetConsent200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetConsent200Response &&
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
    return (newBuiltValueToStringHelper(r'SetConsent200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class SetConsent200ResponseBuilder
    implements
        Builder<SetConsent200Response, SetConsent200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$SetConsent200Response? _$v;

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

  SetConsent200ResponseBuilder() {
    SetConsent200Response._defaults(this);
  }

  SetConsent200ResponseBuilder get _$this {
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
  void replace(covariant SetConsent200Response other) {
    _$v = other as _$SetConsent200Response;
  }

  @override
  void update(void Function(SetConsent200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetConsent200Response build() => _build();

  _$SetConsent200Response _build() {
    final _$result = _$v ??
        _$SetConsent200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'SetConsent200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'SetConsent200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
