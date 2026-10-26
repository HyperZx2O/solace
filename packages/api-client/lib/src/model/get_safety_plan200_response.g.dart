// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_safety_plan200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetSafetyPlan200ResponseSuccessEnum
    _$getSafetyPlan200ResponseSuccessEnum_true_ =
    const GetSafetyPlan200ResponseSuccessEnum._('true_');

GetSafetyPlan200ResponseSuccessEnum
    _$getSafetyPlan200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$getSafetyPlan200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetSafetyPlan200ResponseSuccessEnum>
    _$getSafetyPlan200ResponseSuccessEnumValues = BuiltSet<
        GetSafetyPlan200ResponseSuccessEnum>(const <GetSafetyPlan200ResponseSuccessEnum>[
  _$getSafetyPlan200ResponseSuccessEnum_true_,
]);

Serializer<GetSafetyPlan200ResponseSuccessEnum>
    _$getSafetyPlan200ResponseSuccessEnumSerializer =
    _$GetSafetyPlan200ResponseSuccessEnumSerializer();

class _$GetSafetyPlan200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetSafetyPlan200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetSafetyPlan200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'GetSafetyPlan200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, GetSafetyPlan200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetSafetyPlan200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetSafetyPlan200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetSafetyPlan200Response extends GetSafetyPlan200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetSafetyPlan200Response(
          [void Function(GetSafetyPlan200ResponseBuilder)? updates]) =>
      (GetSafetyPlan200ResponseBuilder()..update(updates))._build();

  _$GetSafetyPlan200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetSafetyPlan200Response rebuild(
          void Function(GetSafetyPlan200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSafetyPlan200ResponseBuilder toBuilder() =>
      GetSafetyPlan200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSafetyPlan200Response &&
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
    return (newBuiltValueToStringHelper(r'GetSafetyPlan200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetSafetyPlan200ResponseBuilder
    implements
        Builder<GetSafetyPlan200Response, GetSafetyPlan200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetSafetyPlan200Response? _$v;

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

  GetSafetyPlan200ResponseBuilder() {
    GetSafetyPlan200Response._defaults(this);
  }

  GetSafetyPlan200ResponseBuilder get _$this {
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
  void replace(covariant GetSafetyPlan200Response other) {
    _$v = other as _$GetSafetyPlan200Response;
  }

  @override
  void update(void Function(GetSafetyPlan200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSafetyPlan200Response build() => _build();

  _$GetSafetyPlan200Response _build() {
    final _$result = _$v ??
        _$GetSafetyPlan200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetSafetyPlan200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetSafetyPlan200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
