// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionSummary extends SessionSummary {
  @override
  final String id;
  @override
  final String? deviceLabel;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastSeenAt;
  @override
  final bool? current;

  factory _$SessionSummary([void Function(SessionSummaryBuilder)? updates]) =>
      (SessionSummaryBuilder()..update(updates))._build();

  _$SessionSummary._(
      {required this.id,
      this.deviceLabel,
      required this.createdAt,
      required this.lastSeenAt,
      this.current})
      : super._();
  @override
  SessionSummary rebuild(void Function(SessionSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionSummaryBuilder toBuilder() => SessionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionSummary &&
        id == other.id &&
        deviceLabel == other.deviceLabel &&
        createdAt == other.createdAt &&
        lastSeenAt == other.lastSeenAt &&
        current == other.current;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, deviceLabel.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionSummary')
          ..add('id', id)
          ..add('deviceLabel', deviceLabel)
          ..add('createdAt', createdAt)
          ..add('lastSeenAt', lastSeenAt)
          ..add('current', current))
        .toString();
  }
}

class SessionSummaryBuilder
    implements Builder<SessionSummary, SessionSummaryBuilder> {
  _$SessionSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _deviceLabel;
  String? get deviceLabel => _$this._deviceLabel;
  set deviceLabel(String? deviceLabel) => _$this._deviceLabel = deviceLabel;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  bool? _current;
  bool? get current => _$this._current;
  set current(bool? current) => _$this._current = current;

  SessionSummaryBuilder() {
    SessionSummary._defaults(this);
  }

  SessionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _deviceLabel = $v.deviceLabel;
      _createdAt = $v.createdAt;
      _lastSeenAt = $v.lastSeenAt;
      _current = $v.current;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionSummary other) {
    _$v = other as _$SessionSummary;
  }

  @override
  void update(void Function(SessionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionSummary build() => _build();

  _$SessionSummary _build() {
    final _$result = _$v ??
        _$SessionSummary._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SessionSummary', 'id'),
          deviceLabel: deviceLabel,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'SessionSummary', 'createdAt'),
          lastSeenAt: BuiltValueNullFieldError.checkNotNull(
              lastSeenAt, r'SessionSummary', 'lastSeenAt'),
          current: current,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
