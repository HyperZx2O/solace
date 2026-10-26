// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetStatus200ResponseSuccessEnum _$getStatus200ResponseSuccessEnum_true_ =
    const GetStatus200ResponseSuccessEnum._('true_');

GetStatus200ResponseSuccessEnum _$getStatus200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$getStatus200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetStatus200ResponseSuccessEnum>
    _$getStatus200ResponseSuccessEnumValues = BuiltSet<
        GetStatus200ResponseSuccessEnum>(const <GetStatus200ResponseSuccessEnum>[
  _$getStatus200ResponseSuccessEnum_true_,
]);

Serializer<GetStatus200ResponseSuccessEnum>
    _$getStatus200ResponseSuccessEnumSerializer =
    _$GetStatus200ResponseSuccessEnumSerializer();

class _$GetStatus200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetStatus200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[GetStatus200ResponseSuccessEnum];
  @override
  final String wireName = 'GetStatus200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, GetStatus200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetStatus200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetStatus200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetStatus200Response extends GetStatus200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetStatus200Response(
          [void Function(GetStatus200ResponseBuilder)? updates]) =>
      (GetStatus200ResponseBuilder()..update(updates))._build();

  _$GetStatus200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetStatus200Response rebuild(
          void Function(GetStatus200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStatus200ResponseBuilder toBuilder() =>
      GetStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStatus200Response &&
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
    return (newBuiltValueToStringHelper(r'GetStatus200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetStatus200ResponseBuilder
    implements
        Builder<GetStatus200Response, GetStatus200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetStatus200Response? _$v;

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

  GetStatus200ResponseBuilder() {
    GetStatus200Response._defaults(this);
  }

  GetStatus200ResponseBuilder get _$this {
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
  void replace(covariant GetStatus200Response other) {
    _$v = other as _$GetStatus200Response;
  }

  @override
  void update(void Function(GetStatus200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStatus200Response build() => _build();

  _$GetStatus200Response _build() {
    final _$result = _$v ??
        _$GetStatus200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetStatus200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetStatus200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
