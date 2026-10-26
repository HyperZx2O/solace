// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_crisis_resources200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetCrisisResources200ResponseSuccessEnum
    _$getCrisisResources200ResponseSuccessEnum_true_ =
    const GetCrisisResources200ResponseSuccessEnum._('true_');

GetCrisisResources200ResponseSuccessEnum
    _$getCrisisResources200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$getCrisisResources200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetCrisisResources200ResponseSuccessEnum>
    _$getCrisisResources200ResponseSuccessEnumValues = BuiltSet<
        GetCrisisResources200ResponseSuccessEnum>(const <GetCrisisResources200ResponseSuccessEnum>[
  _$getCrisisResources200ResponseSuccessEnum_true_,
]);

Serializer<GetCrisisResources200ResponseSuccessEnum>
    _$getCrisisResources200ResponseSuccessEnumSerializer =
    _$GetCrisisResources200ResponseSuccessEnumSerializer();

class _$GetCrisisResources200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetCrisisResources200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetCrisisResources200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'GetCrisisResources200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          GetCrisisResources200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCrisisResources200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCrisisResources200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCrisisResources200Response extends GetCrisisResources200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetCrisisResources200Response(
          [void Function(GetCrisisResources200ResponseBuilder)? updates]) =>
      (GetCrisisResources200ResponseBuilder()..update(updates))._build();

  _$GetCrisisResources200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetCrisisResources200Response rebuild(
          void Function(GetCrisisResources200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCrisisResources200ResponseBuilder toBuilder() =>
      GetCrisisResources200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCrisisResources200Response &&
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
    return (newBuiltValueToStringHelper(r'GetCrisisResources200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetCrisisResources200ResponseBuilder
    implements
        Builder<GetCrisisResources200Response,
            GetCrisisResources200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetCrisisResources200Response? _$v;

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

  GetCrisisResources200ResponseBuilder() {
    GetCrisisResources200Response._defaults(this);
  }

  GetCrisisResources200ResponseBuilder get _$this {
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
  void replace(covariant GetCrisisResources200Response other) {
    _$v = other as _$GetCrisisResources200Response;
  }

  @override
  void update(void Function(GetCrisisResources200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCrisisResources200Response build() => _build();

  _$GetCrisisResources200Response _build() {
    final _$result = _$v ??
        _$GetCrisisResources200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetCrisisResources200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetCrisisResources200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
