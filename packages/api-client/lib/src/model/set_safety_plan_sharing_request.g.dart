// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_safety_plan_sharing_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSafetyPlanSharingRequest extends SetSafetyPlanSharingRequest {
  @override
  final bool sharedWithTherapist;

  factory _$SetSafetyPlanSharingRequest(
          [void Function(SetSafetyPlanSharingRequestBuilder)? updates]) =>
      (SetSafetyPlanSharingRequestBuilder()..update(updates))._build();

  _$SetSafetyPlanSharingRequest._({required this.sharedWithTherapist})
      : super._();
  @override
  SetSafetyPlanSharingRequest rebuild(
          void Function(SetSafetyPlanSharingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSafetyPlanSharingRequestBuilder toBuilder() =>
      SetSafetyPlanSharingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSafetyPlanSharingRequest &&
        sharedWithTherapist == other.sharedWithTherapist;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sharedWithTherapist.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetSafetyPlanSharingRequest')
          ..add('sharedWithTherapist', sharedWithTherapist))
        .toString();
  }
}

class SetSafetyPlanSharingRequestBuilder
    implements
        Builder<SetSafetyPlanSharingRequest,
            SetSafetyPlanSharingRequestBuilder> {
  _$SetSafetyPlanSharingRequest? _$v;

  bool? _sharedWithTherapist;
  bool? get sharedWithTherapist => _$this._sharedWithTherapist;
  set sharedWithTherapist(bool? sharedWithTherapist) =>
      _$this._sharedWithTherapist = sharedWithTherapist;

  SetSafetyPlanSharingRequestBuilder() {
    SetSafetyPlanSharingRequest._defaults(this);
  }

  SetSafetyPlanSharingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sharedWithTherapist = $v.sharedWithTherapist;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSafetyPlanSharingRequest other) {
    _$v = other as _$SetSafetyPlanSharingRequest;
  }

  @override
  void update(void Function(SetSafetyPlanSharingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetSafetyPlanSharingRequest build() => _build();

  _$SetSafetyPlanSharingRequest _build() {
    final _$result = _$v ??
        _$SetSafetyPlanSharingRequest._(
          sharedWithTherapist: BuiltValueNullFieldError.checkNotNull(
              sharedWithTherapist,
              r'SetSafetyPlanSharingRequest',
              'sharedWithTherapist'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
