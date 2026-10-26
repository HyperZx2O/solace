// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SuccessEnvelopeSuccessEnum _$successEnvelopeSuccessEnum_true_ =
    const SuccessEnvelopeSuccessEnum._('true_');

SuccessEnvelopeSuccessEnum _$successEnvelopeSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$successEnvelopeSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SuccessEnvelopeSuccessEnum> _$successEnvelopeSuccessEnumValues =
    BuiltSet<SuccessEnvelopeSuccessEnum>(const <SuccessEnvelopeSuccessEnum>[
  _$successEnvelopeSuccessEnum_true_,
]);

Serializer<SuccessEnvelopeSuccessEnum> _$successEnvelopeSuccessEnumSerializer =
    _$SuccessEnvelopeSuccessEnumSerializer();

class _$SuccessEnvelopeSuccessEnumSerializer
    implements PrimitiveSerializer<SuccessEnvelopeSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[SuccessEnvelopeSuccessEnum];
  @override
  final String wireName = 'SuccessEnvelopeSuccessEnum';

  @override
  Object serialize(Serializers serializers, SuccessEnvelopeSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SuccessEnvelopeSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SuccessEnvelopeSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract class SuccessEnvelopeBuilder {
  void replace(SuccessEnvelope other);
  void update(void Function(SuccessEnvelopeBuilder) updates);
  SuccessEnvelopeSuccessEnum? get success;
  set success(SuccessEnvelopeSuccessEnum? success);

  JsonObject? get data;
  set data(JsonObject? data);

  DateTime? get timestamp;
  set timestamp(DateTime? timestamp);

  JsonObject? get error;
  set error(JsonObject? error);
}

class _$$SuccessEnvelope extends $SuccessEnvelope {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$$SuccessEnvelope(
          [void Function($SuccessEnvelopeBuilder)? updates]) =>
      ($SuccessEnvelopeBuilder()..update(updates))._build();

  _$$SuccessEnvelope._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  $SuccessEnvelope rebuild(void Function($SuccessEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SuccessEnvelopeBuilder toBuilder() =>
      $SuccessEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SuccessEnvelope &&
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
    return (newBuiltValueToStringHelper(r'$SuccessEnvelope')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class $SuccessEnvelopeBuilder
    implements
        Builder<$SuccessEnvelope, $SuccessEnvelopeBuilder>,
        SuccessEnvelopeBuilder {
  _$$SuccessEnvelope? _$v;

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

  $SuccessEnvelopeBuilder() {
    $SuccessEnvelope._defaults(this);
  }

  $SuccessEnvelopeBuilder get _$this {
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
  void replace(covariant $SuccessEnvelope other) {
    _$v = other as _$$SuccessEnvelope;
  }

  @override
  void update(void Function($SuccessEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SuccessEnvelope build() => _build();

  _$$SuccessEnvelope _build() {
    final _$result = _$v ??
        _$$SuccessEnvelope._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'$SuccessEnvelope', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'$SuccessEnvelope', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
