// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceSummaryPlatformEnum _$deviceSummaryPlatformEnum_android =
    const DeviceSummaryPlatformEnum._('android');
const DeviceSummaryPlatformEnum _$deviceSummaryPlatformEnum_ios =
    const DeviceSummaryPlatformEnum._('ios');

DeviceSummaryPlatformEnum _$deviceSummaryPlatformEnumValueOf(String name) {
  switch (name) {
    case 'android':
      return _$deviceSummaryPlatformEnum_android;
    case 'ios':
      return _$deviceSummaryPlatformEnum_ios;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeviceSummaryPlatformEnum> _$deviceSummaryPlatformEnumValues =
    BuiltSet<DeviceSummaryPlatformEnum>(const <DeviceSummaryPlatformEnum>[
  _$deviceSummaryPlatformEnum_android,
  _$deviceSummaryPlatformEnum_ios,
]);

Serializer<DeviceSummaryPlatformEnum> _$deviceSummaryPlatformEnumSerializer =
    _$DeviceSummaryPlatformEnumSerializer();

class _$DeviceSummaryPlatformEnumSerializer
    implements PrimitiveSerializer<DeviceSummaryPlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'android': 'android',
    'ios': 'ios',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'android': 'android',
    'ios': 'ios',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceSummaryPlatformEnum];
  @override
  final String wireName = 'DeviceSummaryPlatformEnum';

  @override
  Object serialize(Serializers serializers, DeviceSummaryPlatformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeviceSummaryPlatformEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeviceSummaryPlatformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeviceSummary extends DeviceSummary {
  @override
  final String id;
  @override
  final DeviceSummaryPlatformEnum platform;
  @override
  final DateTime lastSeenAt;

  factory _$DeviceSummary([void Function(DeviceSummaryBuilder)? updates]) =>
      (DeviceSummaryBuilder()..update(updates))._build();

  _$DeviceSummary._(
      {required this.id, required this.platform, required this.lastSeenAt})
      : super._();
  @override
  DeviceSummary rebuild(void Function(DeviceSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceSummaryBuilder toBuilder() => DeviceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceSummary &&
        id == other.id &&
        platform == other.platform &&
        lastSeenAt == other.lastSeenAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceSummary')
          ..add('id', id)
          ..add('platform', platform)
          ..add('lastSeenAt', lastSeenAt))
        .toString();
  }
}

class DeviceSummaryBuilder
    implements Builder<DeviceSummary, DeviceSummaryBuilder> {
  _$DeviceSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeviceSummaryPlatformEnum? _platform;
  DeviceSummaryPlatformEnum? get platform => _$this._platform;
  set platform(DeviceSummaryPlatformEnum? platform) =>
      _$this._platform = platform;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  DeviceSummaryBuilder() {
    DeviceSummary._defaults(this);
  }

  DeviceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _platform = $v.platform;
      _lastSeenAt = $v.lastSeenAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceSummary other) {
    _$v = other as _$DeviceSummary;
  }

  @override
  void update(void Function(DeviceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceSummary build() => _build();

  _$DeviceSummary _build() {
    final _$result = _$v ??
        _$DeviceSummary._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'DeviceSummary', 'id'),
          platform: BuiltValueNullFieldError.checkNotNull(
              platform, r'DeviceSummary', 'platform'),
          lastSeenAt: BuiltValueNullFieldError.checkNotNull(
              lastSeenAt, r'DeviceSummary', 'lastSeenAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
