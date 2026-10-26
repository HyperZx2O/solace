// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_access_log200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetAccessLog200ResponseSuccessEnum
    _$getAccessLog200ResponseSuccessEnum_true_ =
    const GetAccessLog200ResponseSuccessEnum._('true_');

GetAccessLog200ResponseSuccessEnum _$getAccessLog200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$getAccessLog200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetAccessLog200ResponseSuccessEnum>
    _$getAccessLog200ResponseSuccessEnumValues = BuiltSet<
        GetAccessLog200ResponseSuccessEnum>(const <GetAccessLog200ResponseSuccessEnum>[
  _$getAccessLog200ResponseSuccessEnum_true_,
]);

Serializer<GetAccessLog200ResponseSuccessEnum>
    _$getAccessLog200ResponseSuccessEnumSerializer =
    _$GetAccessLog200ResponseSuccessEnumSerializer();

class _$GetAccessLog200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetAccessLog200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[GetAccessLog200ResponseSuccessEnum];
  @override
  final String wireName = 'GetAccessLog200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, GetAccessLog200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetAccessLog200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetAccessLog200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetAccessLog200Response extends GetAccessLog200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetAccessLog200Response(
          [void Function(GetAccessLog200ResponseBuilder)? updates]) =>
      (GetAccessLog200ResponseBuilder()..update(updates))._build();

  _$GetAccessLog200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetAccessLog200Response rebuild(
          void Function(GetAccessLog200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccessLog200ResponseBuilder toBuilder() =>
      GetAccessLog200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccessLog200Response &&
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
    return (newBuiltValueToStringHelper(r'GetAccessLog200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetAccessLog200ResponseBuilder
    implements
        Builder<GetAccessLog200Response, GetAccessLog200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetAccessLog200Response? _$v;

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

  GetAccessLog200ResponseBuilder() {
    GetAccessLog200Response._defaults(this);
  }

  GetAccessLog200ResponseBuilder get _$this {
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
  void replace(covariant GetAccessLog200Response other) {
    _$v = other as _$GetAccessLog200Response;
  }

  @override
  void update(void Function(GetAccessLog200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccessLog200Response build() => _build();

  _$GetAccessLog200Response _build() {
    final _$result = _$v ??
        _$GetAccessLog200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetAccessLog200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetAccessLog200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
