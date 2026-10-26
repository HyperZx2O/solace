// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ready_envelope_all_of_data_checks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReadyEnvelopeAllOfDataChecksPostgresEnum
    _$readyEnvelopeAllOfDataChecksPostgresEnum_ok =
    const ReadyEnvelopeAllOfDataChecksPostgresEnum._('ok');

ReadyEnvelopeAllOfDataChecksPostgresEnum
    _$readyEnvelopeAllOfDataChecksPostgresEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$readyEnvelopeAllOfDataChecksPostgresEnum_ok;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReadyEnvelopeAllOfDataChecksPostgresEnum>
    _$readyEnvelopeAllOfDataChecksPostgresEnumValues = BuiltSet<
        ReadyEnvelopeAllOfDataChecksPostgresEnum>(const <ReadyEnvelopeAllOfDataChecksPostgresEnum>[
  _$readyEnvelopeAllOfDataChecksPostgresEnum_ok,
]);

const ReadyEnvelopeAllOfDataChecksRedisEnum
    _$readyEnvelopeAllOfDataChecksRedisEnum_ok =
    const ReadyEnvelopeAllOfDataChecksRedisEnum._('ok');

ReadyEnvelopeAllOfDataChecksRedisEnum
    _$readyEnvelopeAllOfDataChecksRedisEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$readyEnvelopeAllOfDataChecksRedisEnum_ok;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReadyEnvelopeAllOfDataChecksRedisEnum>
    _$readyEnvelopeAllOfDataChecksRedisEnumValues = BuiltSet<
        ReadyEnvelopeAllOfDataChecksRedisEnum>(const <ReadyEnvelopeAllOfDataChecksRedisEnum>[
  _$readyEnvelopeAllOfDataChecksRedisEnum_ok,
]);

Serializer<ReadyEnvelopeAllOfDataChecksPostgresEnum>
    _$readyEnvelopeAllOfDataChecksPostgresEnumSerializer =
    _$ReadyEnvelopeAllOfDataChecksPostgresEnumSerializer();
Serializer<ReadyEnvelopeAllOfDataChecksRedisEnum>
    _$readyEnvelopeAllOfDataChecksRedisEnumSerializer =
    _$ReadyEnvelopeAllOfDataChecksRedisEnumSerializer();

class _$ReadyEnvelopeAllOfDataChecksPostgresEnumSerializer
    implements PrimitiveSerializer<ReadyEnvelopeAllOfDataChecksPostgresEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ReadyEnvelopeAllOfDataChecksPostgresEnum
  ];
  @override
  final String wireName = 'ReadyEnvelopeAllOfDataChecksPostgresEnum';

  @override
  Object serialize(Serializers serializers,
          ReadyEnvelopeAllOfDataChecksPostgresEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReadyEnvelopeAllOfDataChecksPostgresEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReadyEnvelopeAllOfDataChecksPostgresEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReadyEnvelopeAllOfDataChecksRedisEnumSerializer
    implements PrimitiveSerializer<ReadyEnvelopeAllOfDataChecksRedisEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ReadyEnvelopeAllOfDataChecksRedisEnum
  ];
  @override
  final String wireName = 'ReadyEnvelopeAllOfDataChecksRedisEnum';

  @override
  Object serialize(
          Serializers serializers, ReadyEnvelopeAllOfDataChecksRedisEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReadyEnvelopeAllOfDataChecksRedisEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReadyEnvelopeAllOfDataChecksRedisEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReadyEnvelopeAllOfDataChecks extends ReadyEnvelopeAllOfDataChecks {
  @override
  final ReadyEnvelopeAllOfDataChecksPostgresEnum postgres;
  @override
  final ReadyEnvelopeAllOfDataChecksRedisEnum redis;

  factory _$ReadyEnvelopeAllOfDataChecks(
          [void Function(ReadyEnvelopeAllOfDataChecksBuilder)? updates]) =>
      (ReadyEnvelopeAllOfDataChecksBuilder()..update(updates))._build();

  _$ReadyEnvelopeAllOfDataChecks._(
      {required this.postgres, required this.redis})
      : super._();
  @override
  ReadyEnvelopeAllOfDataChecks rebuild(
          void Function(ReadyEnvelopeAllOfDataChecksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadyEnvelopeAllOfDataChecksBuilder toBuilder() =>
      ReadyEnvelopeAllOfDataChecksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadyEnvelopeAllOfDataChecks &&
        postgres == other.postgres &&
        redis == other.redis;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postgres.hashCode);
    _$hash = $jc(_$hash, redis.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadyEnvelopeAllOfDataChecks')
          ..add('postgres', postgres)
          ..add('redis', redis))
        .toString();
  }
}

class ReadyEnvelopeAllOfDataChecksBuilder
    implements
        Builder<ReadyEnvelopeAllOfDataChecks,
            ReadyEnvelopeAllOfDataChecksBuilder> {
  _$ReadyEnvelopeAllOfDataChecks? _$v;

  ReadyEnvelopeAllOfDataChecksPostgresEnum? _postgres;
  ReadyEnvelopeAllOfDataChecksPostgresEnum? get postgres => _$this._postgres;
  set postgres(ReadyEnvelopeAllOfDataChecksPostgresEnum? postgres) =>
      _$this._postgres = postgres;

  ReadyEnvelopeAllOfDataChecksRedisEnum? _redis;
  ReadyEnvelopeAllOfDataChecksRedisEnum? get redis => _$this._redis;
  set redis(ReadyEnvelopeAllOfDataChecksRedisEnum? redis) =>
      _$this._redis = redis;

  ReadyEnvelopeAllOfDataChecksBuilder() {
    ReadyEnvelopeAllOfDataChecks._defaults(this);
  }

  ReadyEnvelopeAllOfDataChecksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postgres = $v.postgres;
      _redis = $v.redis;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadyEnvelopeAllOfDataChecks other) {
    _$v = other as _$ReadyEnvelopeAllOfDataChecks;
  }

  @override
  void update(void Function(ReadyEnvelopeAllOfDataChecksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadyEnvelopeAllOfDataChecks build() => _build();

  _$ReadyEnvelopeAllOfDataChecks _build() {
    final _$result = _$v ??
        _$ReadyEnvelopeAllOfDataChecks._(
          postgres: BuiltValueNullFieldError.checkNotNull(
              postgres, r'ReadyEnvelopeAllOfDataChecks', 'postgres'),
          redis: BuiltValueNullFieldError.checkNotNull(
              redis, r'ReadyEnvelopeAllOfDataChecks', 'redis'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
