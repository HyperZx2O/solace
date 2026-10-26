// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_invite200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AcceptInvite200ResponseSuccessEnum
    _$acceptInvite200ResponseSuccessEnum_true_ =
    const AcceptInvite200ResponseSuccessEnum._('true_');

AcceptInvite200ResponseSuccessEnum _$acceptInvite200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$acceptInvite200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AcceptInvite200ResponseSuccessEnum>
    _$acceptInvite200ResponseSuccessEnumValues = BuiltSet<
        AcceptInvite200ResponseSuccessEnum>(const <AcceptInvite200ResponseSuccessEnum>[
  _$acceptInvite200ResponseSuccessEnum_true_,
]);

Serializer<AcceptInvite200ResponseSuccessEnum>
    _$acceptInvite200ResponseSuccessEnumSerializer =
    _$AcceptInvite200ResponseSuccessEnumSerializer();

class _$AcceptInvite200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<AcceptInvite200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[AcceptInvite200ResponseSuccessEnum];
  @override
  final String wireName = 'AcceptInvite200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, AcceptInvite200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AcceptInvite200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AcceptInvite200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AcceptInvite200Response extends AcceptInvite200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$AcceptInvite200Response(
          [void Function(AcceptInvite200ResponseBuilder)? updates]) =>
      (AcceptInvite200ResponseBuilder()..update(updates))._build();

  _$AcceptInvite200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  AcceptInvite200Response rebuild(
          void Function(AcceptInvite200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptInvite200ResponseBuilder toBuilder() =>
      AcceptInvite200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptInvite200Response &&
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
    return (newBuiltValueToStringHelper(r'AcceptInvite200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class AcceptInvite200ResponseBuilder
    implements
        Builder<AcceptInvite200Response, AcceptInvite200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$AcceptInvite200Response? _$v;

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

  AcceptInvite200ResponseBuilder() {
    AcceptInvite200Response._defaults(this);
  }

  AcceptInvite200ResponseBuilder get _$this {
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
  void replace(covariant AcceptInvite200Response other) {
    _$v = other as _$AcceptInvite200Response;
  }

  @override
  void update(void Function(AcceptInvite200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptInvite200Response build() => _build();

  _$AcceptInvite200Response _build() {
    final _$result = _$v ??
        _$AcceptInvite200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'AcceptInvite200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'AcceptInvite200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
