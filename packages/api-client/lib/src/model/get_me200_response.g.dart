// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_me200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetMe200ResponseSuccessEnum _$getMe200ResponseSuccessEnum_true_ =
    const GetMe200ResponseSuccessEnum._('true_');

GetMe200ResponseSuccessEnum _$getMe200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$getMe200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetMe200ResponseSuccessEnum>
    _$getMe200ResponseSuccessEnumValues =
    BuiltSet<GetMe200ResponseSuccessEnum>(const <GetMe200ResponseSuccessEnum>[
  _$getMe200ResponseSuccessEnum_true_,
]);

Serializer<GetMe200ResponseSuccessEnum>
    _$getMe200ResponseSuccessEnumSerializer =
    _$GetMe200ResponseSuccessEnumSerializer();

class _$GetMe200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetMe200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[GetMe200ResponseSuccessEnum];
  @override
  final String wireName = 'GetMe200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers, GetMe200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetMe200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetMe200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetMe200Response extends GetMe200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetMe200Response(
          [void Function(GetMe200ResponseBuilder)? updates]) =>
      (GetMe200ResponseBuilder()..update(updates))._build();

  _$GetMe200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetMe200Response rebuild(void Function(GetMe200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMe200ResponseBuilder toBuilder() =>
      GetMe200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMe200Response &&
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
    return (newBuiltValueToStringHelper(r'GetMe200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetMe200ResponseBuilder
    implements
        Builder<GetMe200Response, GetMe200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetMe200Response? _$v;

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

  GetMe200ResponseBuilder() {
    GetMe200Response._defaults(this);
  }

  GetMe200ResponseBuilder get _$this {
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
  void replace(covariant GetMe200Response other) {
    _$v = other as _$GetMe200Response;
  }

  @override
  void update(void Function(GetMe200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMe200Response build() => _build();

  _$GetMe200Response _build() {
    final _$result = _$v ??
        _$GetMe200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetMe200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetMe200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
