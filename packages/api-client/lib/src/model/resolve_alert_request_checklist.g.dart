// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolve_alert_request_checklist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResolveAlertRequestChecklist extends ResolveAlertRequestChecklist {
  @override
  final bool patientContacted;
  @override
  final bool safetyAssessed;
  @override
  final bool planAgreed;

  factory _$ResolveAlertRequestChecklist(
          [void Function(ResolveAlertRequestChecklistBuilder)? updates]) =>
      (ResolveAlertRequestChecklistBuilder()..update(updates))._build();

  _$ResolveAlertRequestChecklist._(
      {required this.patientContacted,
      required this.safetyAssessed,
      required this.planAgreed})
      : super._();
  @override
  ResolveAlertRequestChecklist rebuild(
          void Function(ResolveAlertRequestChecklistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResolveAlertRequestChecklistBuilder toBuilder() =>
      ResolveAlertRequestChecklistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResolveAlertRequestChecklist &&
        patientContacted == other.patientContacted &&
        safetyAssessed == other.safetyAssessed &&
        planAgreed == other.planAgreed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientContacted.hashCode);
    _$hash = $jc(_$hash, safetyAssessed.hashCode);
    _$hash = $jc(_$hash, planAgreed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResolveAlertRequestChecklist')
          ..add('patientContacted', patientContacted)
          ..add('safetyAssessed', safetyAssessed)
          ..add('planAgreed', planAgreed))
        .toString();
  }
}

class ResolveAlertRequestChecklistBuilder
    implements
        Builder<ResolveAlertRequestChecklist,
            ResolveAlertRequestChecklistBuilder> {
  _$ResolveAlertRequestChecklist? _$v;

  bool? _patientContacted;
  bool? get patientContacted => _$this._patientContacted;
  set patientContacted(bool? patientContacted) =>
      _$this._patientContacted = patientContacted;

  bool? _safetyAssessed;
  bool? get safetyAssessed => _$this._safetyAssessed;
  set safetyAssessed(bool? safetyAssessed) =>
      _$this._safetyAssessed = safetyAssessed;

  bool? _planAgreed;
  bool? get planAgreed => _$this._planAgreed;
  set planAgreed(bool? planAgreed) => _$this._planAgreed = planAgreed;

  ResolveAlertRequestChecklistBuilder() {
    ResolveAlertRequestChecklist._defaults(this);
  }

  ResolveAlertRequestChecklistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientContacted = $v.patientContacted;
      _safetyAssessed = $v.safetyAssessed;
      _planAgreed = $v.planAgreed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResolveAlertRequestChecklist other) {
    _$v = other as _$ResolveAlertRequestChecklist;
  }

  @override
  void update(void Function(ResolveAlertRequestChecklistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResolveAlertRequestChecklist build() => _build();

  _$ResolveAlertRequestChecklist _build() {
    final _$result = _$v ??
        _$ResolveAlertRequestChecklist._(
          patientContacted: BuiltValueNullFieldError.checkNotNull(
              patientContacted,
              r'ResolveAlertRequestChecklist',
              'patientContacted'),
          safetyAssessed: BuiltValueNullFieldError.checkNotNull(safetyAssessed,
              r'ResolveAlertRequestChecklist', 'safetyAssessed'),
          planAgreed: BuiltValueNullFieldError.checkNotNull(
              planAgreed, r'ResolveAlertRequestChecklist', 'planAgreed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
