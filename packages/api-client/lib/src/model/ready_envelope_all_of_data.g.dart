// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ready_envelope_all_of_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReadyEnvelopeAllOfDataStatusEnum _$readyEnvelopeAllOfDataStatusEnum_ok =
    const ReadyEnvelopeAllOfDataStatusEnum._('ok');

ReadyEnvelopeAllOfDataStatusEnum _$readyEnvelopeAllOfDataStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$readyEnvelopeAllOfDataStatusEnum_ok;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReadyEnvelopeAllOfDataStatusEnum>
    _$readyEnvelopeAllOfDataStatusEnumValues = BuiltSet<
        ReadyEnvelopeAllOfDataStatusEnum>(const <ReadyEnvelopeAllOfDataStatusEnum>[
  _$readyEnvelopeAllOfDataStatusEnum_ok,
]);

Serializer<ReadyEnvelopeAllOfDataStatusEnum>
    _$readyEnvelopeAllOfDataStatusEnumSerializer =
    _$ReadyEnvelopeAllOfDataStatusEnumSerializer();

class _$ReadyEnvelopeAllOfDataStatusEnumSerializer
    implements PrimitiveSerializer<ReadyEnvelopeAllOfDataStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
  };

  @override
  final Iterable<Type> types = const <Type>[ReadyEnvelopeAllOfDataStatusEnum];
  @override
  final String wireName = 'ReadyEnvelopeAllOfDataStatusEnum';

  @override
  Object serialize(
          Serializers serializers, ReadyEnvelopeAllOfDataStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReadyEnvelopeAllOfDataStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReadyEnvelopeAllOfDataStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReadyEnvelopeAllOfData extends ReadyEnvelopeAllOfData {
  @override
  final ReadyEnvelopeAllOfDataStatusEnum status;
  @override
  final ReadyEnvelopeAllOfDataChecks checks;
  @override
  final DateTime resourcesVerifiedAt;

  factory _$ReadyEnvelopeAllOfData(
          [void Function(ReadyEnvelopeAllOfDataBuilder)? updates]) =>
      (ReadyEnvelopeAllOfDataBuilder()..update(updates))._build();

  _$ReadyEnvelopeAllOfData._(
      {required this.status,
      required this.checks,
      required this.resourcesVerifiedAt})
      : super._();
  @override
  ReadyEnvelopeAllOfData rebuild(
          void Function(ReadyEnvelopeAllOfDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadyEnvelopeAllOfDataBuilder toBuilder() =>
      ReadyEnvelopeAllOfDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadyEnvelopeAllOfData &&
        status == other.status &&
        checks == other.checks &&
        resourcesVerifiedAt == other.resourcesVerifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, checks.hashCode);
    _$hash = $jc(_$hash, resourcesVerifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadyEnvelopeAllOfData')
          ..add('status', status)
          ..add('checks', checks)
          ..add('resourcesVerifiedAt', resourcesVerifiedAt))
        .toString();
  }
}

class ReadyEnvelopeAllOfDataBuilder
    implements Builder<ReadyEnvelopeAllOfData, ReadyEnvelopeAllOfDataBuilder> {
  _$ReadyEnvelopeAllOfData? _$v;

  ReadyEnvelopeAllOfDataStatusEnum? _status;
  ReadyEnvelopeAllOfDataStatusEnum? get status => _$this._status;
  set status(ReadyEnvelopeAllOfDataStatusEnum? status) =>
      _$this._status = status;

  ReadyEnvelopeAllOfDataChecksBuilder? _checks;
  ReadyEnvelopeAllOfDataChecksBuilder get checks =>
      _$this._checks ??= ReadyEnvelopeAllOfDataChecksBuilder();
  set checks(ReadyEnvelopeAllOfDataChecksBuilder? checks) =>
      _$this._checks = checks;

  DateTime? _resourcesVerifiedAt;
  DateTime? get resourcesVerifiedAt => _$this._resourcesVerifiedAt;
  set resourcesVerifiedAt(DateTime? resourcesVerifiedAt) =>
      _$this._resourcesVerifiedAt = resourcesVerifiedAt;

  ReadyEnvelopeAllOfDataBuilder() {
    ReadyEnvelopeAllOfData._defaults(this);
  }

  ReadyEnvelopeAllOfDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _checks = $v.checks.toBuilder();
      _resourcesVerifiedAt = $v.resourcesVerifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadyEnvelopeAllOfData other) {
    _$v = other as _$ReadyEnvelopeAllOfData;
  }

  @override
  void update(void Function(ReadyEnvelopeAllOfDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadyEnvelopeAllOfData build() => _build();

  _$ReadyEnvelopeAllOfData _build() {
    _$ReadyEnvelopeAllOfData _$result;
    try {
      _$result = _$v ??
          _$ReadyEnvelopeAllOfData._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ReadyEnvelopeAllOfData', 'status'),
            checks: checks.build(),
            resourcesVerifiedAt: BuiltValueNullFieldError.checkNotNull(
                resourcesVerifiedAt,
                r'ReadyEnvelopeAllOfData',
                'resourcesVerifiedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checks';
        checks.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReadyEnvelopeAllOfData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
