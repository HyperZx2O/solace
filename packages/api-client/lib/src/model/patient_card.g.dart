// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatientCardGroupEnum _$patientCardGroupEnum_needsAttention =
    const PatientCardGroupEnum._('needsAttention');
const PatientCardGroupEnum _$patientCardGroupEnum_checkInWhenYouCan =
    const PatientCardGroupEnum._('checkInWhenYouCan');
const PatientCardGroupEnum _$patientCardGroupEnum_progressingWell =
    const PatientCardGroupEnum._('progressingWell');
const PatientCardGroupEnum _$patientCardGroupEnum_noRecentActivity =
    const PatientCardGroupEnum._('noRecentActivity');

PatientCardGroupEnum _$patientCardGroupEnumValueOf(String name) {
  switch (name) {
    case 'needsAttention':
      return _$patientCardGroupEnum_needsAttention;
    case 'checkInWhenYouCan':
      return _$patientCardGroupEnum_checkInWhenYouCan;
    case 'progressingWell':
      return _$patientCardGroupEnum_progressingWell;
    case 'noRecentActivity':
      return _$patientCardGroupEnum_noRecentActivity;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatientCardGroupEnum> _$patientCardGroupEnumValues =
    BuiltSet<PatientCardGroupEnum>(const <PatientCardGroupEnum>[
  _$patientCardGroupEnum_needsAttention,
  _$patientCardGroupEnum_checkInWhenYouCan,
  _$patientCardGroupEnum_progressingWell,
  _$patientCardGroupEnum_noRecentActivity,
]);

Serializer<PatientCardGroupEnum> _$patientCardGroupEnumSerializer =
    _$PatientCardGroupEnumSerializer();

class _$PatientCardGroupEnumSerializer
    implements PrimitiveSerializer<PatientCardGroupEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'needsAttention': 'needs_attention',
    'checkInWhenYouCan': 'check_in_when_you_can',
    'progressingWell': 'progressing_well',
    'noRecentActivity': 'no_recent_activity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'needs_attention': 'needsAttention',
    'check_in_when_you_can': 'checkInWhenYouCan',
    'progressing_well': 'progressingWell',
    'no_recent_activity': 'noRecentActivity',
  };

  @override
  final Iterable<Type> types = const <Type>[PatientCardGroupEnum];
  @override
  final String wireName = 'PatientCardGroupEnum';

  @override
  Object serialize(Serializers serializers, PatientCardGroupEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatientCardGroupEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatientCardGroupEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatientCard extends PatientCard {
  @override
  final String id;
  @override
  final String patientId;
  @override
  final String? displayName;
  @override
  final PatientCardGroupEnum group;
  @override
  final DateTime lastCheckInAt;
  @override
  final bool? openAlert;

  factory _$PatientCard([void Function(PatientCardBuilder)? updates]) =>
      (PatientCardBuilder()..update(updates))._build();

  _$PatientCard._(
      {required this.id,
      required this.patientId,
      this.displayName,
      required this.group,
      required this.lastCheckInAt,
      this.openAlert})
      : super._();
  @override
  PatientCard rebuild(void Function(PatientCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientCardBuilder toBuilder() => PatientCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientCard &&
        id == other.id &&
        patientId == other.patientId &&
        displayName == other.displayName &&
        group == other.group &&
        lastCheckInAt == other.lastCheckInAt &&
        openAlert == other.openAlert;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, lastCheckInAt.hashCode);
    _$hash = $jc(_$hash, openAlert.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientCard')
          ..add('id', id)
          ..add('patientId', patientId)
          ..add('displayName', displayName)
          ..add('group', group)
          ..add('lastCheckInAt', lastCheckInAt)
          ..add('openAlert', openAlert))
        .toString();
  }
}

class PatientCardBuilder implements Builder<PatientCard, PatientCardBuilder> {
  _$PatientCard? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  PatientCardGroupEnum? _group;
  PatientCardGroupEnum? get group => _$this._group;
  set group(PatientCardGroupEnum? group) => _$this._group = group;

  DateTime? _lastCheckInAt;
  DateTime? get lastCheckInAt => _$this._lastCheckInAt;
  set lastCheckInAt(DateTime? lastCheckInAt) =>
      _$this._lastCheckInAt = lastCheckInAt;

  bool? _openAlert;
  bool? get openAlert => _$this._openAlert;
  set openAlert(bool? openAlert) => _$this._openAlert = openAlert;

  PatientCardBuilder() {
    PatientCard._defaults(this);
  }

  PatientCardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _patientId = $v.patientId;
      _displayName = $v.displayName;
      _group = $v.group;
      _lastCheckInAt = $v.lastCheckInAt;
      _openAlert = $v.openAlert;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientCard other) {
    _$v = other as _$PatientCard;
  }

  @override
  void update(void Function(PatientCardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientCard build() => _build();

  _$PatientCard _build() {
    final _$result = _$v ??
        _$PatientCard._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'PatientCard', 'id'),
          patientId: BuiltValueNullFieldError.checkNotNull(
              patientId, r'PatientCard', 'patientId'),
          displayName: displayName,
          group: BuiltValueNullFieldError.checkNotNull(
              group, r'PatientCard', 'group'),
          lastCheckInAt: BuiltValueNullFieldError.checkNotNull(
              lastCheckInAt, r'PatientCard', 'lastCheckInAt'),
          openAlert: openAlert,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
