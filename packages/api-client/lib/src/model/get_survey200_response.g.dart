// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_survey200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetSurvey200ResponseSuccessEnum _$getSurvey200ResponseSuccessEnum_true_ =
    const GetSurvey200ResponseSuccessEnum._('true_');

GetSurvey200ResponseSuccessEnum _$getSurvey200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$getSurvey200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetSurvey200ResponseSuccessEnum>
    _$getSurvey200ResponseSuccessEnumValues = BuiltSet<
        GetSurvey200ResponseSuccessEnum>(const <GetSurvey200ResponseSuccessEnum>[
  _$getSurvey200ResponseSuccessEnum_true_,
]);

Serializer<GetSurvey200ResponseSuccessEnum>
    _$getSurvey200ResponseSuccessEnumSerializer =
    _$GetSurvey200ResponseSuccessEnumSerializer();

class _$GetSurvey200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetSurvey200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[GetSurvey200ResponseSuccessEnum];
  @override
  final String wireName = 'GetSurvey200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, GetSurvey200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetSurvey200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetSurvey200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetSurvey200Response extends GetSurvey200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetSurvey200Response(
          [void Function(GetSurvey200ResponseBuilder)? updates]) =>
      (GetSurvey200ResponseBuilder()..update(updates))._build();

  _$GetSurvey200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetSurvey200Response rebuild(
          void Function(GetSurvey200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSurvey200ResponseBuilder toBuilder() =>
      GetSurvey200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSurvey200Response &&
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
    return (newBuiltValueToStringHelper(r'GetSurvey200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetSurvey200ResponseBuilder
    implements
        Builder<GetSurvey200Response, GetSurvey200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetSurvey200Response? _$v;

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

  GetSurvey200ResponseBuilder() {
    GetSurvey200Response._defaults(this);
  }

  GetSurvey200ResponseBuilder get _$this {
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
  void replace(covariant GetSurvey200Response other) {
    _$v = other as _$GetSurvey200Response;
  }

  @override
  void update(void Function(GetSurvey200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSurvey200Response build() => _build();

  _$GetSurvey200Response _build() {
    final _$result = _$v ??
        _$GetSurvey200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetSurvey200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetSurvey200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
