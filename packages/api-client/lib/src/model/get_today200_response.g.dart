// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_today200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetToday200ResponseSuccessEnum _$getToday200ResponseSuccessEnum_true_ =
    const GetToday200ResponseSuccessEnum._('true_');

GetToday200ResponseSuccessEnum _$getToday200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$getToday200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetToday200ResponseSuccessEnum>
    _$getToday200ResponseSuccessEnumValues = BuiltSet<
        GetToday200ResponseSuccessEnum>(const <GetToday200ResponseSuccessEnum>[
  _$getToday200ResponseSuccessEnum_true_,
]);

Serializer<GetToday200ResponseSuccessEnum>
    _$getToday200ResponseSuccessEnumSerializer =
    _$GetToday200ResponseSuccessEnumSerializer();

class _$GetToday200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetToday200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[GetToday200ResponseSuccessEnum];
  @override
  final String wireName = 'GetToday200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, GetToday200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetToday200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetToday200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetToday200Response extends GetToday200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetToday200Response(
          [void Function(GetToday200ResponseBuilder)? updates]) =>
      (GetToday200ResponseBuilder()..update(updates))._build();

  _$GetToday200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetToday200Response rebuild(
          void Function(GetToday200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetToday200ResponseBuilder toBuilder() =>
      GetToday200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetToday200Response &&
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
    return (newBuiltValueToStringHelper(r'GetToday200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetToday200ResponseBuilder
    implements
        Builder<GetToday200Response, GetToday200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetToday200Response? _$v;

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

  GetToday200ResponseBuilder() {
    GetToday200Response._defaults(this);
  }

  GetToday200ResponseBuilder get _$this {
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
  void replace(covariant GetToday200Response other) {
    _$v = other as _$GetToday200Response;
  }

  @override
  void update(void Function(GetToday200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetToday200Response build() => _build();

  _$GetToday200Response _build() {
    final _$result = _$v ??
        _$GetToday200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetToday200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetToday200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
