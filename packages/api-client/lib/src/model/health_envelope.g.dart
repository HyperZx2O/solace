// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HealthEnvelopeSuccessEnum _$healthEnvelopeSuccessEnum_true_ =
    const HealthEnvelopeSuccessEnum._('true_');

HealthEnvelopeSuccessEnum _$healthEnvelopeSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$healthEnvelopeSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HealthEnvelopeSuccessEnum> _$healthEnvelopeSuccessEnumValues =
    BuiltSet<HealthEnvelopeSuccessEnum>(const <HealthEnvelopeSuccessEnum>[
  _$healthEnvelopeSuccessEnum_true_,
]);

Serializer<HealthEnvelopeSuccessEnum> _$healthEnvelopeSuccessEnumSerializer =
    _$HealthEnvelopeSuccessEnumSerializer();

class _$HealthEnvelopeSuccessEnumSerializer
    implements PrimitiveSerializer<HealthEnvelopeSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[HealthEnvelopeSuccessEnum];
  @override
  final String wireName = 'HealthEnvelopeSuccessEnum';

  @override
  Object serialize(Serializers serializers, HealthEnvelopeSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HealthEnvelopeSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HealthEnvelopeSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HealthEnvelope extends HealthEnvelope {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$HealthEnvelope([void Function(HealthEnvelopeBuilder)? updates]) =>
      (HealthEnvelopeBuilder()..update(updates))._build();

  _$HealthEnvelope._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  HealthEnvelope rebuild(void Function(HealthEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthEnvelopeBuilder toBuilder() => HealthEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthEnvelope &&
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
    return (newBuiltValueToStringHelper(r'HealthEnvelope')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class HealthEnvelopeBuilder
    implements
        Builder<HealthEnvelope, HealthEnvelopeBuilder>,
        SuccessEnvelopeBuilder {
  _$HealthEnvelope? _$v;

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

  HealthEnvelopeBuilder() {
    HealthEnvelope._defaults(this);
  }

  HealthEnvelopeBuilder get _$this {
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
  void replace(covariant HealthEnvelope other) {
    _$v = other as _$HealthEnvelope;
  }

  @override
  void update(void Function(HealthEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthEnvelope build() => _build();

  _$HealthEnvelope _build() {
    final _$result = _$v ??
        _$HealthEnvelope._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'HealthEnvelope', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'HealthEnvelope', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
