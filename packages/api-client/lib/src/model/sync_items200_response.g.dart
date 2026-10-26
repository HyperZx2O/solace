// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_items200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SyncItems200ResponseSuccessEnum _$syncItems200ResponseSuccessEnum_true_ =
    const SyncItems200ResponseSuccessEnum._('true_');

SyncItems200ResponseSuccessEnum _$syncItems200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$syncItems200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SyncItems200ResponseSuccessEnum>
    _$syncItems200ResponseSuccessEnumValues = BuiltSet<
        SyncItems200ResponseSuccessEnum>(const <SyncItems200ResponseSuccessEnum>[
  _$syncItems200ResponseSuccessEnum_true_,
]);

Serializer<SyncItems200ResponseSuccessEnum>
    _$syncItems200ResponseSuccessEnumSerializer =
    _$SyncItems200ResponseSuccessEnumSerializer();

class _$SyncItems200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<SyncItems200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[SyncItems200ResponseSuccessEnum];
  @override
  final String wireName = 'SyncItems200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, SyncItems200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SyncItems200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SyncItems200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SyncItems200Response extends SyncItems200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$SyncItems200Response(
          [void Function(SyncItems200ResponseBuilder)? updates]) =>
      (SyncItems200ResponseBuilder()..update(updates))._build();

  _$SyncItems200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  SyncItems200Response rebuild(
          void Function(SyncItems200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncItems200ResponseBuilder toBuilder() =>
      SyncItems200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncItems200Response &&
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
    return (newBuiltValueToStringHelper(r'SyncItems200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class SyncItems200ResponseBuilder
    implements
        Builder<SyncItems200Response, SyncItems200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$SyncItems200Response? _$v;

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

  SyncItems200ResponseBuilder() {
    SyncItems200Response._defaults(this);
  }

  SyncItems200ResponseBuilder get _$this {
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
  void replace(covariant SyncItems200Response other) {
    _$v = other as _$SyncItems200Response;
  }

  @override
  void update(void Function(SyncItems200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncItems200Response build() => _build();

  _$SyncItems200Response _build() {
    final _$result = _$v ??
        _$SyncItems200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'SyncItems200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'SyncItems200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
