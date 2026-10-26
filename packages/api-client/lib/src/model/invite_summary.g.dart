// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InviteSummary extends InviteSummary {
  @override
  final String id;
  @override
  final String status;
  @override
  final DateTime expiresAt;

  factory _$InviteSummary([void Function(InviteSummaryBuilder)? updates]) =>
      (InviteSummaryBuilder()..update(updates))._build();

  _$InviteSummary._(
      {required this.id, required this.status, required this.expiresAt})
      : super._();
  @override
  InviteSummary rebuild(void Function(InviteSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InviteSummaryBuilder toBuilder() => InviteSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InviteSummary &&
        id == other.id &&
        status == other.status &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InviteSummary')
          ..add('id', id)
          ..add('status', status)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class InviteSummaryBuilder
    implements Builder<InviteSummary, InviteSummaryBuilder> {
  _$InviteSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  InviteSummaryBuilder() {
    InviteSummary._defaults(this);
  }

  InviteSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InviteSummary other) {
    _$v = other as _$InviteSummary;
  }

  @override
  void update(void Function(InviteSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InviteSummary build() => _build();

  _$InviteSummary _build() {
    final _$result = _$v ??
        _$InviteSummary._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'InviteSummary', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'InviteSummary', 'status'),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt, r'InviteSummary', 'expiresAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
