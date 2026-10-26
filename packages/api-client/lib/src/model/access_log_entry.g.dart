// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_log_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccessLogEntryViewerRoleEnum _$accessLogEntryViewerRoleEnum_therapist =
    const AccessLogEntryViewerRoleEnum._('therapist');
const AccessLogEntryViewerRoleEnum _$accessLogEntryViewerRoleEnum_safetyTeam =
    const AccessLogEntryViewerRoleEnum._('safetyTeam');

AccessLogEntryViewerRoleEnum _$accessLogEntryViewerRoleEnumValueOf(
    String name) {
  switch (name) {
    case 'therapist':
      return _$accessLogEntryViewerRoleEnum_therapist;
    case 'safetyTeam':
      return _$accessLogEntryViewerRoleEnum_safetyTeam;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AccessLogEntryViewerRoleEnum>
    _$accessLogEntryViewerRoleEnumValues =
    BuiltSet<AccessLogEntryViewerRoleEnum>(const <AccessLogEntryViewerRoleEnum>[
  _$accessLogEntryViewerRoleEnum_therapist,
  _$accessLogEntryViewerRoleEnum_safetyTeam,
]);

Serializer<AccessLogEntryViewerRoleEnum>
    _$accessLogEntryViewerRoleEnumSerializer =
    _$AccessLogEntryViewerRoleEnumSerializer();

class _$AccessLogEntryViewerRoleEnumSerializer
    implements PrimitiveSerializer<AccessLogEntryViewerRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'therapist': 'therapist',
    'safetyTeam': 'safety_team',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'therapist': 'therapist',
    'safety_team': 'safetyTeam',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessLogEntryViewerRoleEnum];
  @override
  final String wireName = 'AccessLogEntryViewerRoleEnum';

  @override
  Object serialize(Serializers serializers, AccessLogEntryViewerRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccessLogEntryViewerRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccessLogEntryViewerRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccessLogEntry extends AccessLogEntry {
  @override
  final String id;
  @override
  final AccessLogEntryViewerRoleEnum viewerRole;
  @override
  final String dataType;
  @override
  final DateTime at;

  factory _$AccessLogEntry([void Function(AccessLogEntryBuilder)? updates]) =>
      (AccessLogEntryBuilder()..update(updates))._build();

  _$AccessLogEntry._(
      {required this.id,
      required this.viewerRole,
      required this.dataType,
      required this.at})
      : super._();
  @override
  AccessLogEntry rebuild(void Function(AccessLogEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessLogEntryBuilder toBuilder() => AccessLogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessLogEntry &&
        id == other.id &&
        viewerRole == other.viewerRole &&
        dataType == other.dataType &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, viewerRole.hashCode);
    _$hash = $jc(_$hash, dataType.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessLogEntry')
          ..add('id', id)
          ..add('viewerRole', viewerRole)
          ..add('dataType', dataType)
          ..add('at', at))
        .toString();
  }
}

class AccessLogEntryBuilder
    implements Builder<AccessLogEntry, AccessLogEntryBuilder> {
  _$AccessLogEntry? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AccessLogEntryViewerRoleEnum? _viewerRole;
  AccessLogEntryViewerRoleEnum? get viewerRole => _$this._viewerRole;
  set viewerRole(AccessLogEntryViewerRoleEnum? viewerRole) =>
      _$this._viewerRole = viewerRole;

  String? _dataType;
  String? get dataType => _$this._dataType;
  set dataType(String? dataType) => _$this._dataType = dataType;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  AccessLogEntryBuilder() {
    AccessLogEntry._defaults(this);
  }

  AccessLogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _viewerRole = $v.viewerRole;
      _dataType = $v.dataType;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessLogEntry other) {
    _$v = other as _$AccessLogEntry;
  }

  @override
  void update(void Function(AccessLogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessLogEntry build() => _build();

  _$AccessLogEntry _build() {
    final _$result = _$v ??
        _$AccessLogEntry._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AccessLogEntry', 'id'),
          viewerRole: BuiltValueNullFieldError.checkNotNull(
              viewerRole, r'AccessLogEntry', 'viewerRole'),
          dataType: BuiltValueNullFieldError.checkNotNull(
              dataType, r'AccessLogEntry', 'dataType'),
          at: BuiltValueNullFieldError.checkNotNull(
              at, r'AccessLogEntry', 'at'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
