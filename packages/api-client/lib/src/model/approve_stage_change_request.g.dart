// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_stage_change_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApproveStageChangeRequest extends ApproveStageChangeRequest {
  @override
  final bool approved;

  factory _$ApproveStageChangeRequest(
          [void Function(ApproveStageChangeRequestBuilder)? updates]) =>
      (ApproveStageChangeRequestBuilder()..update(updates))._build();

  _$ApproveStageChangeRequest._({required this.approved}) : super._();
  @override
  ApproveStageChangeRequest rebuild(
          void Function(ApproveStageChangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApproveStageChangeRequestBuilder toBuilder() =>
      ApproveStageChangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApproveStageChangeRequest && approved == other.approved;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, approved.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApproveStageChangeRequest')
          ..add('approved', approved))
        .toString();
  }
}

class ApproveStageChangeRequestBuilder
    implements
        Builder<ApproveStageChangeRequest, ApproveStageChangeRequestBuilder> {
  _$ApproveStageChangeRequest? _$v;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  ApproveStageChangeRequestBuilder() {
    ApproveStageChangeRequest._defaults(this);
  }

  ApproveStageChangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _approved = $v.approved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApproveStageChangeRequest other) {
    _$v = other as _$ApproveStageChangeRequest;
  }

  @override
  void update(void Function(ApproveStageChangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApproveStageChangeRequest build() => _build();

  _$ApproveStageChangeRequest _build() {
    final _$result = _$v ??
        _$ApproveStageChangeRequest._(
          approved: BuiltValueNullFieldError.checkNotNull(
              approved, r'ApproveStageChangeRequest', 'approved'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
