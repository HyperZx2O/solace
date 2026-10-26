// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ready_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReadyEnvelopeSuccessEnum _$readyEnvelopeSuccessEnum_true_ =
    const ReadyEnvelopeSuccessEnum._('true_');

ReadyEnvelopeSuccessEnum _$readyEnvelopeSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$readyEnvelopeSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReadyEnvelopeSuccessEnum> _$readyEnvelopeSuccessEnumValues =
    BuiltSet<ReadyEnvelopeSuccessEnum>(const <ReadyEnvelopeSuccessEnum>[
  _$readyEnvelopeSuccessEnum_true_,
]);

Serializer<ReadyEnvelopeSuccessEnum> _$readyEnvelopeSuccessEnumSerializer =
    _$ReadyEnvelopeSuccessEnumSerializer();

class _$ReadyEnvelopeSuccessEnumSerializer
    implements PrimitiveSerializer<ReadyEnvelopeSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[ReadyEnvelopeSuccessEnum];
  @override
  final String wireName = 'ReadyEnvelopeSuccessEnum';

  @override
  Object serialize(Serializers serializers, ReadyEnvelopeSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReadyEnvelopeSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReadyEnvelopeSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReadyEnvelope extends ReadyEnvelope {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ReadyEnvelope([void Function(ReadyEnvelopeBuilder)? updates]) =>
      (ReadyEnvelopeBuilder()..update(updates))._build();

  _$ReadyEnvelope._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ReadyEnvelope rebuild(void Function(ReadyEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadyEnvelopeBuilder toBuilder() => ReadyEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadyEnvelope &&
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
    return (newBuiltValueToStringHelper(r'ReadyEnvelope')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ReadyEnvelopeBuilder
    implements
        Builder<ReadyEnvelope, ReadyEnvelopeBuilder>,
        SuccessEnvelopeBuilder {
  _$ReadyEnvelope? _$v;

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

  ReadyEnvelopeBuilder() {
    ReadyEnvelope._defaults(this);
  }

  ReadyEnvelopeBuilder get _$this {
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
  void replace(covariant ReadyEnvelope other) {
    _$v = other as _$ReadyEnvelope;
  }

  @override
  void update(void Function(ReadyEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadyEnvelope build() => _build();

  _$ReadyEnvelope _build() {
    final _$result = _$v ??
        _$ReadyEnvelope._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ReadyEnvelope', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ReadyEnvelope', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
