// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_safety_plan_field_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSafetyPlanFieldRequest extends SetSafetyPlanFieldRequest {
  @override
  final String text;

  factory _$SetSafetyPlanFieldRequest(
          [void Function(SetSafetyPlanFieldRequestBuilder)? updates]) =>
      (SetSafetyPlanFieldRequestBuilder()..update(updates))._build();

  _$SetSafetyPlanFieldRequest._({required this.text}) : super._();
  @override
  SetSafetyPlanFieldRequest rebuild(
          void Function(SetSafetyPlanFieldRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSafetyPlanFieldRequestBuilder toBuilder() =>
      SetSafetyPlanFieldRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSafetyPlanFieldRequest && text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetSafetyPlanFieldRequest')
          ..add('text', text))
        .toString();
  }
}

class SetSafetyPlanFieldRequestBuilder
    implements
        Builder<SetSafetyPlanFieldRequest, SetSafetyPlanFieldRequestBuilder> {
  _$SetSafetyPlanFieldRequest? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  SetSafetyPlanFieldRequestBuilder() {
    SetSafetyPlanFieldRequest._defaults(this);
  }

  SetSafetyPlanFieldRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSafetyPlanFieldRequest other) {
    _$v = other as _$SetSafetyPlanFieldRequest;
  }

  @override
  void update(void Function(SetSafetyPlanFieldRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetSafetyPlanFieldRequest build() => _build();

  _$SetSafetyPlanFieldRequest _build() {
    final _$result = _$v ??
        _$SetSafetyPlanFieldRequest._(
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'SetSafetyPlanFieldRequest', 'text'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
