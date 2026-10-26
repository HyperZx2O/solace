// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crisis_decision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CrisisDecision extends CrisisDecision {
  @override
  final CrisisTier tier;
  @override
  final bool showCrisisScreen;
  @override
  final String alertId;
  @override
  final bool historical;
  @override
  final bool? duplicate;
  @override
  final String? ruleVersion;
  @override
  final BuiltList<Resource>? resources;

  factory _$CrisisDecision([void Function(CrisisDecisionBuilder)? updates]) =>
      (CrisisDecisionBuilder()..update(updates))._build();

  _$CrisisDecision._(
      {required this.tier,
      required this.showCrisisScreen,
      required this.alertId,
      required this.historical,
      this.duplicate,
      this.ruleVersion,
      this.resources})
      : super._();
  @override
  CrisisDecision rebuild(void Function(CrisisDecisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrisisDecisionBuilder toBuilder() => CrisisDecisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrisisDecision &&
        tier == other.tier &&
        showCrisisScreen == other.showCrisisScreen &&
        alertId == other.alertId &&
        historical == other.historical &&
        duplicate == other.duplicate &&
        ruleVersion == other.ruleVersion &&
        resources == other.resources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, showCrisisScreen.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, historical.hashCode);
    _$hash = $jc(_$hash, duplicate.hashCode);
    _$hash = $jc(_$hash, ruleVersion.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CrisisDecision')
          ..add('tier', tier)
          ..add('showCrisisScreen', showCrisisScreen)
          ..add('alertId', alertId)
          ..add('historical', historical)
          ..add('duplicate', duplicate)
          ..add('ruleVersion', ruleVersion)
          ..add('resources', resources))
        .toString();
  }
}

class CrisisDecisionBuilder
    implements Builder<CrisisDecision, CrisisDecisionBuilder> {
  _$CrisisDecision? _$v;

  CrisisTier? _tier;
  CrisisTier? get tier => _$this._tier;
  set tier(CrisisTier? tier) => _$this._tier = tier;

  bool? _showCrisisScreen;
  bool? get showCrisisScreen => _$this._showCrisisScreen;
  set showCrisisScreen(bool? showCrisisScreen) =>
      _$this._showCrisisScreen = showCrisisScreen;

  String? _alertId;
  String? get alertId => _$this._alertId;
  set alertId(String? alertId) => _$this._alertId = alertId;

  bool? _historical;
  bool? get historical => _$this._historical;
  set historical(bool? historical) => _$this._historical = historical;

  bool? _duplicate;
  bool? get duplicate => _$this._duplicate;
  set duplicate(bool? duplicate) => _$this._duplicate = duplicate;

  String? _ruleVersion;
  String? get ruleVersion => _$this._ruleVersion;
  set ruleVersion(String? ruleVersion) => _$this._ruleVersion = ruleVersion;

  ListBuilder<Resource>? _resources;
  ListBuilder<Resource> get resources =>
      _$this._resources ??= ListBuilder<Resource>();
  set resources(ListBuilder<Resource>? resources) =>
      _$this._resources = resources;

  CrisisDecisionBuilder() {
    CrisisDecision._defaults(this);
  }

  CrisisDecisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tier = $v.tier;
      _showCrisisScreen = $v.showCrisisScreen;
      _alertId = $v.alertId;
      _historical = $v.historical;
      _duplicate = $v.duplicate;
      _ruleVersion = $v.ruleVersion;
      _resources = $v.resources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CrisisDecision other) {
    _$v = other as _$CrisisDecision;
  }

  @override
  void update(void Function(CrisisDecisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CrisisDecision build() => _build();

  _$CrisisDecision _build() {
    _$CrisisDecision _$result;
    try {
      _$result = _$v ??
          _$CrisisDecision._(
            tier: BuiltValueNullFieldError.checkNotNull(
                tier, r'CrisisDecision', 'tier'),
            showCrisisScreen: BuiltValueNullFieldError.checkNotNull(
                showCrisisScreen, r'CrisisDecision', 'showCrisisScreen'),
            alertId: BuiltValueNullFieldError.checkNotNull(
                alertId, r'CrisisDecision', 'alertId'),
            historical: BuiltValueNullFieldError.checkNotNull(
                historical, r'CrisisDecision', 'historical'),
            duplicate: duplicate,
            ruleVersion: ruleVersion,
            resources: _resources?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CrisisDecision', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
