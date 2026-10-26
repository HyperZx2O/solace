// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_patient_summary200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetPatientSummary200ResponseSuccessEnum
    _$getPatientSummary200ResponseSuccessEnum_true_ =
    const GetPatientSummary200ResponseSuccessEnum._('true_');

GetPatientSummary200ResponseSuccessEnum
    _$getPatientSummary200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$getPatientSummary200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetPatientSummary200ResponseSuccessEnum>
    _$getPatientSummary200ResponseSuccessEnumValues = BuiltSet<
        GetPatientSummary200ResponseSuccessEnum>(const <GetPatientSummary200ResponseSuccessEnum>[
  _$getPatientSummary200ResponseSuccessEnum_true_,
]);

Serializer<GetPatientSummary200ResponseSuccessEnum>
    _$getPatientSummary200ResponseSuccessEnumSerializer =
    _$GetPatientSummary200ResponseSuccessEnumSerializer();

class _$GetPatientSummary200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetPatientSummary200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetPatientSummary200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'GetPatientSummary200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          GetPatientSummary200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetPatientSummary200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetPatientSummary200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetPatientSummary200Response extends GetPatientSummary200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetPatientSummary200Response(
          [void Function(GetPatientSummary200ResponseBuilder)? updates]) =>
      (GetPatientSummary200ResponseBuilder()..update(updates))._build();

  _$GetPatientSummary200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetPatientSummary200Response rebuild(
          void Function(GetPatientSummary200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPatientSummary200ResponseBuilder toBuilder() =>
      GetPatientSummary200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPatientSummary200Response &&
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
    return (newBuiltValueToStringHelper(r'GetPatientSummary200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetPatientSummary200ResponseBuilder
    implements
        Builder<GetPatientSummary200Response,
            GetPatientSummary200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetPatientSummary200Response? _$v;

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

  GetPatientSummary200ResponseBuilder() {
    GetPatientSummary200Response._defaults(this);
  }

  GetPatientSummary200ResponseBuilder get _$this {
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
  void replace(covariant GetPatientSummary200Response other) {
    _$v = other as _$GetPatientSummary200Response;
  }

  @override
  void update(void Function(GetPatientSummary200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPatientSummary200Response build() => _build();

  _$GetPatientSummary200Response _build() {
    final _$result = _$v ??
        _$GetPatientSummary200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetPatientSummary200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetPatientSummary200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
