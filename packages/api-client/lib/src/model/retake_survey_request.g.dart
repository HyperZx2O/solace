// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retake_survey_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetakeSurveyRequest extends RetakeSurveyRequest {
  @override
  final String surveyKey;

  factory _$RetakeSurveyRequest(
          [void Function(RetakeSurveyRequestBuilder)? updates]) =>
      (RetakeSurveyRequestBuilder()..update(updates))._build();

  _$RetakeSurveyRequest._({required this.surveyKey}) : super._();
  @override
  RetakeSurveyRequest rebuild(
          void Function(RetakeSurveyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetakeSurveyRequestBuilder toBuilder() =>
      RetakeSurveyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetakeSurveyRequest && surveyKey == other.surveyKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, surveyKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetakeSurveyRequest')
          ..add('surveyKey', surveyKey))
        .toString();
  }
}

class RetakeSurveyRequestBuilder
    implements Builder<RetakeSurveyRequest, RetakeSurveyRequestBuilder> {
  _$RetakeSurveyRequest? _$v;

  String? _surveyKey;
  String? get surveyKey => _$this._surveyKey;
  set surveyKey(String? surveyKey) => _$this._surveyKey = surveyKey;

  RetakeSurveyRequestBuilder() {
    RetakeSurveyRequest._defaults(this);
  }

  RetakeSurveyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _surveyKey = $v.surveyKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetakeSurveyRequest other) {
    _$v = other as _$RetakeSurveyRequest;
  }

  @override
  void update(void Function(RetakeSurveyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetakeSurveyRequest build() => _build();

  _$RetakeSurveyRequest _build() {
    final _$result = _$v ??
        _$RetakeSurveyRequest._(
          surveyKey: BuiltValueNullFieldError.checkNotNull(
              surveyKey, r'RetakeSurveyRequest', 'surveyKey'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
