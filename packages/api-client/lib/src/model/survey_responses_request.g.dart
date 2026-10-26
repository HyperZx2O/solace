// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_responses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyResponsesRequest extends SurveyResponsesRequest {
  @override
  final String clientId;
  @override
  final DateTime clientCreatedAt;
  @override
  final BuiltMap<String, int> responses;

  factory _$SurveyResponsesRequest(
          [void Function(SurveyResponsesRequestBuilder)? updates]) =>
      (SurveyResponsesRequestBuilder()..update(updates))._build();

  _$SurveyResponsesRequest._(
      {required this.clientId,
      required this.clientCreatedAt,
      required this.responses})
      : super._();
  @override
  SurveyResponsesRequest rebuild(
          void Function(SurveyResponsesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyResponsesRequestBuilder toBuilder() =>
      SurveyResponsesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyResponsesRequest &&
        clientId == other.clientId &&
        clientCreatedAt == other.clientCreatedAt &&
        responses == other.responses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, responses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SurveyResponsesRequest')
          ..add('clientId', clientId)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('responses', responses))
        .toString();
  }
}

class SurveyResponsesRequestBuilder
    implements Builder<SurveyResponsesRequest, SurveyResponsesRequestBuilder> {
  _$SurveyResponsesRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  DateTime? _clientCreatedAt;
  DateTime? get clientCreatedAt => _$this._clientCreatedAt;
  set clientCreatedAt(DateTime? clientCreatedAt) =>
      _$this._clientCreatedAt = clientCreatedAt;

  MapBuilder<String, int>? _responses;
  MapBuilder<String, int> get responses =>
      _$this._responses ??= MapBuilder<String, int>();
  set responses(MapBuilder<String, int>? responses) =>
      _$this._responses = responses;

  SurveyResponsesRequestBuilder() {
    SurveyResponsesRequest._defaults(this);
  }

  SurveyResponsesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientCreatedAt = $v.clientCreatedAt;
      _responses = $v.responses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyResponsesRequest other) {
    _$v = other as _$SurveyResponsesRequest;
  }

  @override
  void update(void Function(SurveyResponsesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyResponsesRequest build() => _build();

  _$SurveyResponsesRequest _build() {
    _$SurveyResponsesRequest _$result;
    try {
      _$result = _$v ??
          _$SurveyResponsesRequest._(
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, r'SurveyResponsesRequest', 'clientId'),
            clientCreatedAt: BuiltValueNullFieldError.checkNotNull(
                clientCreatedAt, r'SurveyResponsesRequest', 'clientCreatedAt'),
            responses: responses.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responses';
        responses.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SurveyResponsesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
