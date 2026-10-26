// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Status extends Status {
  @override
  final RestrictionLevel restrictionLevel;
  @override
  final String copyKey;
  @override
  final bool? invitePending;
  @override
  final bool? monitoringOn;

  factory _$Status([void Function(StatusBuilder)? updates]) =>
      (StatusBuilder()..update(updates))._build();

  _$Status._(
      {required this.restrictionLevel,
      required this.copyKey,
      this.invitePending,
      this.monitoringOn})
      : super._();
  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status &&
        restrictionLevel == other.restrictionLevel &&
        copyKey == other.copyKey &&
        invitePending == other.invitePending &&
        monitoringOn == other.monitoringOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restrictionLevel.hashCode);
    _$hash = $jc(_$hash, copyKey.hashCode);
    _$hash = $jc(_$hash, invitePending.hashCode);
    _$hash = $jc(_$hash, monitoringOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Status')
          ..add('restrictionLevel', restrictionLevel)
          ..add('copyKey', copyKey)
          ..add('invitePending', invitePending)
          ..add('monitoringOn', monitoringOn))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status? _$v;

  RestrictionLevel? _restrictionLevel;
  RestrictionLevel? get restrictionLevel => _$this._restrictionLevel;
  set restrictionLevel(RestrictionLevel? restrictionLevel) =>
      _$this._restrictionLevel = restrictionLevel;

  String? _copyKey;
  String? get copyKey => _$this._copyKey;
  set copyKey(String? copyKey) => _$this._copyKey = copyKey;

  bool? _invitePending;
  bool? get invitePending => _$this._invitePending;
  set invitePending(bool? invitePending) =>
      _$this._invitePending = invitePending;

  bool? _monitoringOn;
  bool? get monitoringOn => _$this._monitoringOn;
  set monitoringOn(bool? monitoringOn) => _$this._monitoringOn = monitoringOn;

  StatusBuilder() {
    Status._defaults(this);
  }

  StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restrictionLevel = $v.restrictionLevel;
      _copyKey = $v.copyKey;
      _invitePending = $v.invitePending;
      _monitoringOn = $v.monitoringOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Status build() => _build();

  _$Status _build() {
    final _$result = _$v ??
        _$Status._(
          restrictionLevel: BuiltValueNullFieldError.checkNotNull(
              restrictionLevel, r'Status', 'restrictionLevel'),
          copyKey: BuiltValueNullFieldError.checkNotNull(
              copyKey, r'Status', 'copyKey'),
          invitePending: invitePending,
          monitoringOn: monitoringOn,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
