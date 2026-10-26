// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_therapist_alert200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetTherapistAlert200ResponseSuccessEnum
    _$getTherapistAlert200ResponseSuccessEnum_true_ =
    const GetTherapistAlert200ResponseSuccessEnum._('true_');

GetTherapistAlert200ResponseSuccessEnum
    _$getTherapistAlert200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$getTherapistAlert200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetTherapistAlert200ResponseSuccessEnum>
    _$getTherapistAlert200ResponseSuccessEnumValues = BuiltSet<
        GetTherapistAlert200ResponseSuccessEnum>(const <GetTherapistAlert200ResponseSuccessEnum>[
  _$getTherapistAlert200ResponseSuccessEnum_true_,
]);

Serializer<GetTherapistAlert200ResponseSuccessEnum>
    _$getTherapistAlert200ResponseSuccessEnumSerializer =
    _$GetTherapistAlert200ResponseSuccessEnumSerializer();

class _$GetTherapistAlert200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<GetTherapistAlert200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetTherapistAlert200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'GetTherapistAlert200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          GetTherapistAlert200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetTherapistAlert200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetTherapistAlert200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetTherapistAlert200Response extends GetTherapistAlert200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetTherapistAlert200Response(
          [void Function(GetTherapistAlert200ResponseBuilder)? updates]) =>
      (GetTherapistAlert200ResponseBuilder()..update(updates))._build();

  _$GetTherapistAlert200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetTherapistAlert200Response rebuild(
          void Function(GetTherapistAlert200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTherapistAlert200ResponseBuilder toBuilder() =>
      GetTherapistAlert200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTherapistAlert200Response &&
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
    return (newBuiltValueToStringHelper(r'GetTherapistAlert200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetTherapistAlert200ResponseBuilder
    implements
        Builder<GetTherapistAlert200Response,
            GetTherapistAlert200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetTherapistAlert200Response? _$v;

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

  GetTherapistAlert200ResponseBuilder() {
    GetTherapistAlert200Response._defaults(this);
  }

  GetTherapistAlert200ResponseBuilder get _$this {
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
  void replace(covariant GetTherapistAlert200Response other) {
    _$v = other as _$GetTherapistAlert200Response;
  }

  @override
  void update(void Function(GetTherapistAlert200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTherapistAlert200Response build() => _build();

  _$GetTherapistAlert200Response _build() {
    final _$result = _$v ??
        _$GetTherapistAlert200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetTherapistAlert200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetTherapistAlert200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
