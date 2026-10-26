// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_alert.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TherapistAlert extends TherapistAlert {
  @override
  final String id;
  @override
  final String patientId;
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
  @override
  final DateTime? reviewedAt;
  @override
  final DateTime? undoDeadline;
  @override
  final BuiltMap<String, bool> checklist;
  @override
  final BuiltList<TherapistAlertHistoryInner>? history;

  factory _$TherapistAlert([void Function(TherapistAlertBuilder)? updates]) =>
      (TherapistAlertBuilder()..update(updates))._build();

  _$TherapistAlert._(
      {required this.id,
      required this.patientId,
      required this.state,
      required this.tier,
      this.escalatedExternal,
      required this.createdAt,
      required this.elapsedSeconds,
      this.reviewedAt,
      this.undoDeadline,
      required this.checklist,
      this.history})
      : super._();
  @override
  TherapistAlert rebuild(void Function(TherapistAlertBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TherapistAlertBuilder toBuilder() => TherapistAlertBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TherapistAlert &&
        id == other.id &&
        patientId == other.patientId &&
        state == other.state &&
        tier == other.tier &&
        escalatedExternal == other.escalatedExternal &&
        createdAt == other.createdAt &&
        elapsedSeconds == other.elapsedSeconds &&
        reviewedAt == other.reviewedAt &&
        undoDeadline == other.undoDeadline &&
        checklist == other.checklist &&
        history == other.history;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, escalatedExternal.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, elapsedSeconds.hashCode);
    _$hash = $jc(_$hash, reviewedAt.hashCode);
    _$hash = $jc(_$hash, undoDeadline.hashCode);
    _$hash = $jc(_$hash, checklist.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TherapistAlert')
          ..add('id', id)
          ..add('patientId', patientId)
          ..add('state', state)
          ..add('tier', tier)
          ..add('escalatedExternal', escalatedExternal)
          ..add('createdAt', createdAt)
          ..add('elapsedSeconds', elapsedSeconds)
          ..add('reviewedAt', reviewedAt)
          ..add('undoDeadline', undoDeadline)
          ..add('checklist', checklist)
          ..add('history', history))
        .toString();
  }
}

class TherapistAlertBuilder
    implements Builder<TherapistAlert, TherapistAlertBuilder> {
  _$TherapistAlert? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

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

  DateTime? _reviewedAt;
  DateTime? get reviewedAt => _$this._reviewedAt;
  set reviewedAt(DateTime? reviewedAt) => _$this._reviewedAt = reviewedAt;

  DateTime? _undoDeadline;
  DateTime? get undoDeadline => _$this._undoDeadline;
  set undoDeadline(DateTime? undoDeadline) =>
      _$this._undoDeadline = undoDeadline;

  MapBuilder<String, bool>? _checklist;
  MapBuilder<String, bool> get checklist =>
      _$this._checklist ??= MapBuilder<String, bool>();
  set checklist(MapBuilder<String, bool>? checklist) =>
      _$this._checklist = checklist;

  ListBuilder<TherapistAlertHistoryInner>? _history;
  ListBuilder<TherapistAlertHistoryInner> get history =>
      _$this._history ??= ListBuilder<TherapistAlertHistoryInner>();
  set history(ListBuilder<TherapistAlertHistoryInner>? history) =>
      _$this._history = history;

  TherapistAlertBuilder() {
    TherapistAlert._defaults(this);
  }

  TherapistAlertBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _patientId = $v.patientId;
      _state = $v.state;
      _tier = $v.tier;
      _escalatedExternal = $v.escalatedExternal;
      _createdAt = $v.createdAt;
      _elapsedSeconds = $v.elapsedSeconds;
      _reviewedAt = $v.reviewedAt;
      _undoDeadline = $v.undoDeadline;
      _checklist = $v.checklist.toBuilder();
      _history = $v.history?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TherapistAlert other) {
    _$v = other as _$TherapistAlert;
  }

  @override
  void update(void Function(TherapistAlertBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TherapistAlert build() => _build();

  _$TherapistAlert _build() {
    _$TherapistAlert _$result;
    try {
      _$result = _$v ??
          _$TherapistAlert._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TherapistAlert', 'id'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'TherapistAlert', 'patientId'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'TherapistAlert', 'state'),
            tier: BuiltValueNullFieldError.checkNotNull(
                tier, r'TherapistAlert', 'tier'),
            escalatedExternal: escalatedExternal,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'TherapistAlert', 'createdAt'),
            elapsedSeconds: BuiltValueNullFieldError.checkNotNull(
                elapsedSeconds, r'TherapistAlert', 'elapsedSeconds'),
            reviewedAt: reviewedAt,
            undoDeadline: undoDeadline,
            checklist: checklist.build(),
            history: _history?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checklist';
        checklist.build();
        _$failedField = 'history';
        _history?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TherapistAlert', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
