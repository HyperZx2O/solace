// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_survey_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompleteSurveyRequest extends CompleteSurveyRequest {
  @override
  final String responseId;

  factory _$CompleteSurveyRequest(
          [void Function(CompleteSurveyRequestBuilder)? updates]) =>
      (CompleteSurveyRequestBuilder()..update(updates))._build();

  _$CompleteSurveyRequest._({required this.responseId}) : super._();
  @override
  CompleteSurveyRequest rebuild(
          void Function(CompleteSurveyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteSurveyRequestBuilder toBuilder() =>
      CompleteSurveyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteSurveyRequest && responseId == other.responseId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompleteSurveyRequest')
          ..add('responseId', responseId))
        .toString();
  }
}

class CompleteSurveyRequestBuilder
    implements Builder<CompleteSurveyRequest, CompleteSurveyRequestBuilder> {
  _$CompleteSurveyRequest? _$v;

  String? _responseId;
  String? get responseId => _$this._responseId;
  set responseId(String? responseId) => _$this._responseId = responseId;

  CompleteSurveyRequestBuilder() {
    CompleteSurveyRequest._defaults(this);
  }

  CompleteSurveyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseId = $v.responseId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteSurveyRequest other) {
    _$v = other as _$CompleteSurveyRequest;
  }

  @override
  void update(void Function(CompleteSurveyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompleteSurveyRequest build() => _build();

  _$CompleteSurveyRequest _build() {
    final _$result = _$v ??
        _$CompleteSurveyRequest._(
          responseId: BuiltValueNullFieldError.checkNotNull(
              responseId, r'CompleteSurveyRequest', 'responseId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
