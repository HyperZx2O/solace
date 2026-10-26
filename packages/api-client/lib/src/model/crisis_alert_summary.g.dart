// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crisis_alert_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CrisisAlertSummary extends CrisisAlertSummary {
  @override
  final String id;
  @override
  final AlertState state;
  @override
  final CrisisTier tier;
  @override
  final bool? escalatedExternal;
  @override
  final DateTime createdAt;
  @override
  final int elapsedSeconds;

  factory _$CrisisAlertSummary(
          [void Function(CrisisAlertSummaryBuilder)? updates]) =>
      (CrisisAlertSummaryBuilder()..update(updates))._build();

  _$CrisisAlertSummary._(
      {required this.id,
      required this.state,
      required this.tier,
      this.escalatedExternal,
      required this.createdAt,
      required this.elapsedSeconds})
      : super._();
  @override
  CrisisAlertSummary rebuild(
          void Function(CrisisAlertSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrisisAlertSummaryBuilder toBuilder() =>
      CrisisAlertSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrisisAlertSummary &&
        id == other.id &&
        state == other.state &&
        tier == other.tier &&
        escalatedExternal == other.escalatedExternal &&
        createdAt == other.createdAt &&
        elapsedSeconds == other.elapsedSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, escalatedExternal.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, elapsedSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CrisisAlertSummary')
          ..add('id', id)
          ..add('state', state)
          ..add('tier', tier)
          ..add('escalatedExternal', escalatedExternal)
          ..add('createdAt', createdAt)
          ..add('elapsedSeconds', elapsedSeconds))
        .toString();
  }
}

class CrisisAlertSummaryBuilder
    implements Builder<CrisisAlertSummary, CrisisAlertSummaryBuilder> {
  _$CrisisAlertSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AlertState? _state;
  AlertState? get state => _$this._state;
  set state(AlertState? state) => _$this._state = state;

  CrisisTier? _tier;
  CrisisTier? get tier => _$this._tier;
  set tier(CrisisTier? tier) => _$this._tier = tier;

  bool? _escalatedExternal;
  bool? get escalatedExternal => _$this._escalatedExternal;
  set escalatedExternal(bool? escalatedExternal) =>
      _$this._escalatedExternal = escalatedExternal;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _elapsedSeconds;
  int? get elapsedSeconds => _$this._elapsedSeconds;
  set elapsedSeconds(int? elapsedSeconds) =>
      _$this._elapsedSeconds = elapsedSeconds;

  CrisisAlertSummaryBuilder() {
    CrisisAlertSummary._defaults(this);
  }

  CrisisAlertSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _state = $v.state;
      _tier = $v.tier;
      _escalatedExternal = $v.escalatedExternal;
      _createdAt = $v.createdAt;
      _elapsedSeconds = $v.elapsedSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CrisisAlertSummary other) {
    _$v = other as _$CrisisAlertSummary;
  }

  @override
  void update(void Function(CrisisAlertSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CrisisAlertSummary build() => _build();

  _$CrisisAlertSummary _build() {
    final _$result = _$v ??
        _$CrisisAlertSummary._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CrisisAlertSummary', 'id'),
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'CrisisAlertSummary', 'state'),
          tier: BuiltValueNullFieldError.checkNotNull(
              tier, r'CrisisAlertSummary', 'tier'),
          escalatedExternal: escalatedExternal,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'CrisisAlertSummary', 'createdAt'),
          elapsedSeconds: BuiltValueNullFieldError.checkNotNull(
              elapsedSeconds, r'CrisisAlertSummary', 'elapsedSeconds'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
