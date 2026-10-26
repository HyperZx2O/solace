// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_therapist_patient200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetTherapistPatient200ResponseSuccessEnum
    _$getTherapistPatient200ResponseSuccessEnum_true_ =
    const GetTherapistPatient200ResponseSuccessEnum._('true_');

GetTherapistPatient200ResponseSuccessEnum
    _$getTherapistPatient200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$getTherapistPatient200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetTherapistPatient200ResponseSuccessEnum>
    _$getTherapistPatient200ResponseSuccessEnumValues = BuiltSet<
        GetTherapistPatient200ResponseSuccessEnum>(const <GetTherapistPatient200ResponseSuccessEnum>[
  _$getTherapistPatient200ResponseSuccessEnum_true_,
]);

Serializer<GetTherapistPatient200ResponseSuccessEnum>
    _$getTherapistPatient200ResponseSuccessEnumSerializer =
    _$GetTherapistPatient200ResponseSuccessEnumSerializer();

class _$GetTherapistPatient200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetTherapistPatient200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetTherapistPatient200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'GetTherapistPatient200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          GetTherapistPatient200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetTherapistPatient200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetTherapistPatient200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetTherapistPatient200Response extends GetTherapistPatient200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetTherapistPatient200Response(
          [void Function(GetTherapistPatient200ResponseBuilder)? updates]) =>
      (GetTherapistPatient200ResponseBuilder()..update(updates))._build();

  _$GetTherapistPatient200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetTherapistPatient200Response rebuild(
          void Function(GetTherapistPatient200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTherapistPatient200ResponseBuilder toBuilder() =>
      GetTherapistPatient200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTherapistPatient200Response &&
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
    return (newBuiltValueToStringHelper(r'GetTherapistPatient200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetTherapistPatient200ResponseBuilder
    implements
        Builder<GetTherapistPatient200Response,
            GetTherapistPatient200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetTherapistPatient200Response? _$v;

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

  GetTherapistPatient200ResponseBuilder() {
    GetTherapistPatient200Response._defaults(this);
  }

  GetTherapistPatient200ResponseBuilder get _$this {
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
  void replace(covariant GetTherapistPatient200Response other) {
    _$v = other as _$GetTherapistPatient200Response;
  }

  @override
  void update(void Function(GetTherapistPatient200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTherapistPatient200Response build() => _build();

  _$GetTherapistPatient200Response _build() {
    final _$result = _$v ??
        _$GetTherapistPatient200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetTherapistPatient200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetTherapistPatient200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
