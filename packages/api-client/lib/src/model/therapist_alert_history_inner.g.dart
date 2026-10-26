// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_alert_history_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TherapistAlertHistoryInner extends TherapistAlertHistoryInner {
  @override
  final AlertState? fromState;
  @override
  final AlertState? toState;
  @override
  final String? actor;
  @override
  final DateTime? at;

  factory _$TherapistAlertHistoryInner(
          [void Function(TherapistAlertHistoryInnerBuilder)? updates]) =>
      (TherapistAlertHistoryInnerBuilder()..update(updates))._build();

  _$TherapistAlertHistoryInner._(
      {this.fromState, this.toState, this.actor, this.at})
      : super._();
  @override
  TherapistAlertHistoryInner rebuild(
          void Function(TherapistAlertHistoryInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TherapistAlertHistoryInnerBuilder toBuilder() =>
      TherapistAlertHistoryInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TherapistAlertHistoryInner &&
        fromState == other.fromState &&
        toState == other.toState &&
        actor == other.actor &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromState.hashCode);
    _$hash = $jc(_$hash, toState.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TherapistAlertHistoryInner')
          ..add('fromState', fromState)
          ..add('toState', toState)
          ..add('actor', actor)
          ..add('at', at))
        .toString();
  }
}

class TherapistAlertHistoryInnerBuilder
    implements
        Builder<TherapistAlertHistoryInner, TherapistAlertHistoryInnerBuilder> {
  _$TherapistAlertHistoryInner? _$v;

  AlertState? _fromState;
  AlertState? get fromState => _$this._fromState;
  set fromState(AlertState? fromState) => _$this._fromState = fromState;

  AlertState? _toState;
  AlertState? get toState => _$this._toState;
  set toState(AlertState? toState) => _$this._toState = toState;

  String? _actor;
  String? get actor => _$this._actor;
  set actor(String? actor) => _$this._actor = actor;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  TherapistAlertHistoryInnerBuilder() {
    TherapistAlertHistoryInner._defaults(this);
  }

  TherapistAlertHistoryInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromState = $v.fromState;
      _toState = $v.toState;
      _actor = $v.actor;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TherapistAlertHistoryInner other) {
    _$v = other as _$TherapistAlertHistoryInner;
  }

  @override
  void update(void Function(TherapistAlertHistoryInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TherapistAlertHistoryInner build() => _build();

  _$TherapistAlertHistoryInner _build() {
    final _$result = _$v ??
        _$TherapistAlertHistoryInner._(
          fromState: fromState,
          toState: toState,
          actor: actor,
          at: at,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
