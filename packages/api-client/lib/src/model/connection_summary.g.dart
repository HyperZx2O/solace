// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConnectionSummary extends ConnectionSummary {
  @override
  final String id;
  @override
  final ConnectionState state;
  @override
  final String? therapistDisplayName;
  @override
  final DateTime createdAt;
  @override
  final DateTime? confirmedAt;

  factory _$ConnectionSummary(
          [void Function(ConnectionSummaryBuilder)? updates]) =>
      (ConnectionSummaryBuilder()..update(updates))._build();

  _$ConnectionSummary._(
      {required this.id,
      required this.state,
      this.therapistDisplayName,
      required this.createdAt,
      this.confirmedAt})
      : super._();
  @override
  ConnectionSummary rebuild(void Function(ConnectionSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnectionSummaryBuilder toBuilder() =>
      ConnectionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConnectionSummary &&
        id == other.id &&
        state == other.state &&
        therapistDisplayName == other.therapistDisplayName &&
        createdAt == other.createdAt &&
        confirmedAt == other.confirmedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, therapistDisplayName.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, confirmedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConnectionSummary')
          ..add('id', id)
          ..add('state', state)
          ..add('therapistDisplayName', therapistDisplayName)
          ..add('createdAt', createdAt)
          ..add('confirmedAt', confirmedAt))
        .toString();
  }
}

class ConnectionSummaryBuilder
    implements Builder<ConnectionSummary, ConnectionSummaryBuilder> {
  _$ConnectionSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ConnectionState? _state;
  ConnectionState? get state => _$this._state;
  set state(ConnectionState? state) => _$this._state = state;

  String? _therapistDisplayName;
  String? get therapistDisplayName => _$this._therapistDisplayName;
  set therapistDisplayName(String? therapistDisplayName) =>
      _$this._therapistDisplayName = therapistDisplayName;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _confirmedAt;
  DateTime? get confirmedAt => _$this._confirmedAt;
  set confirmedAt(DateTime? confirmedAt) => _$this._confirmedAt = confirmedAt;

  ConnectionSummaryBuilder() {
    ConnectionSummary._defaults(this);
  }

  ConnectionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _state = $v.state;
      _therapistDisplayName = $v.therapistDisplayName;
      _createdAt = $v.createdAt;
      _confirmedAt = $v.confirmedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConnectionSummary other) {
    _$v = other as _$ConnectionSummary;
  }

  @override
  void update(void Function(ConnectionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConnectionSummary build() => _build();

  _$ConnectionSummary _build() {
    final _$result = _$v ??
        _$ConnectionSummary._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ConnectionSummary', 'id'),
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'ConnectionSummary', 'state'),
          therapistDisplayName: therapistDisplayName,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ConnectionSummary', 'createdAt'),
          confirmedAt: confirmedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
