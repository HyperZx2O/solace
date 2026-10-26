// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_crisis200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CheckCrisis200ResponseSuccessEnum
    _$checkCrisis200ResponseSuccessEnum_true_ =
    const CheckCrisis200ResponseSuccessEnum._('true_');

CheckCrisis200ResponseSuccessEnum _$checkCrisis200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$checkCrisis200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CheckCrisis200ResponseSuccessEnum>
    _$checkCrisis200ResponseSuccessEnumValues = BuiltSet<
        CheckCrisis200ResponseSuccessEnum>(const <CheckCrisis200ResponseSuccessEnum>[
  _$checkCrisis200ResponseSuccessEnum_true_,
]);

Serializer<CheckCrisis200ResponseSuccessEnum>
    _$checkCrisis200ResponseSuccessEnumSerializer =
    _$CheckCrisis200ResponseSuccessEnumSerializer();

class _$CheckCrisis200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<CheckCrisis200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[CheckCrisis200ResponseSuccessEnum];
  @override
  final String wireName = 'CheckCrisis200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, CheckCrisis200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CheckCrisis200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CheckCrisis200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CheckCrisis200Response extends CheckCrisis200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$CheckCrisis200Response(
          [void Function(CheckCrisis200ResponseBuilder)? updates]) =>
      (CheckCrisis200ResponseBuilder()..update(updates))._build();

  _$CheckCrisis200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  CheckCrisis200Response rebuild(
          void Function(CheckCrisis200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckCrisis200ResponseBuilder toBuilder() =>
      CheckCrisis200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckCrisis200Response &&
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
    return (newBuiltValueToStringHelper(r'CheckCrisis200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class CheckCrisis200ResponseBuilder
    implements
        Builder<CheckCrisis200Response, CheckCrisis200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$CheckCrisis200Response? _$v;

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

  CheckCrisis200ResponseBuilder() {
    CheckCrisis200Response._defaults(this);
  }

  CheckCrisis200ResponseBuilder get _$this {
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
  void replace(covariant CheckCrisis200Response other) {
    _$v = other as _$CheckCrisis200Response;
  }

  @override
  void update(void Function(CheckCrisis200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckCrisis200Response build() => _build();

  _$CheckCrisis200Response _build() {
    final _$result = _$v ??
        _$CheckCrisis200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CheckCrisis200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'CheckCrisis200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
