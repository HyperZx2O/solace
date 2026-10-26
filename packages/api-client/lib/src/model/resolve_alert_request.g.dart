// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolve_alert_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResolveAlertRequest extends ResolveAlertRequest {
  @override
  final ResolveAlertRequestChecklist checklist;

  factory _$ResolveAlertRequest(
          [void Function(ResolveAlertRequestBuilder)? updates]) =>
      (ResolveAlertRequestBuilder()..update(updates))._build();

  _$ResolveAlertRequest._({required this.checklist}) : super._();
  @override
  ResolveAlertRequest rebuild(
          void Function(ResolveAlertRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResolveAlertRequestBuilder toBuilder() =>
      ResolveAlertRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResolveAlertRequest && checklist == other.checklist;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checklist.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResolveAlertRequest')
          ..add('checklist', checklist))
        .toString();
  }
}

class ResolveAlertRequestBuilder
    implements Builder<ResolveAlertRequest, ResolveAlertRequestBuilder> {
  _$ResolveAlertRequest? _$v;

  ResolveAlertRequestChecklistBuilder? _checklist;
  ResolveAlertRequestChecklistBuilder get checklist =>
      _$this._checklist ??= ResolveAlertRequestChecklistBuilder();
  set checklist(ResolveAlertRequestChecklistBuilder? checklist) =>
      _$this._checklist = checklist;

  ResolveAlertRequestBuilder() {
    ResolveAlertRequest._defaults(this);
  }

  ResolveAlertRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checklist = $v.checklist.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResolveAlertRequest other) {
    _$v = other as _$ResolveAlertRequest;
  }

  @override
  void update(void Function(ResolveAlertRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResolveAlertRequest build() => _build();

  _$ResolveAlertRequest _build() {
    _$ResolveAlertRequest _$result;
    try {
      _$result = _$v ??
          _$ResolveAlertRequest._(
            checklist: checklist.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checklist';
        checklist.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ResolveAlertRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
