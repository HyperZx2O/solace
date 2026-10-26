// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyResult extends SurveyResult {
  @override
  final String id;
  @override
  final String surveyId;
  @override
  final int totalScore;
  @override
  final BuiltMap<String, int> scores;
  @override
  final bool? possibleConcern;
  @override
  final DateTime createdAt;

  factory _$SurveyResult([void Function(SurveyResultBuilder)? updates]) =>
      (SurveyResultBuilder()..update(updates))._build();

  _$SurveyResult._(
      {required this.id,
      required this.surveyId,
      required this.totalScore,
      required this.scores,
      this.possibleConcern,
      required this.createdAt})
      : super._();
  @override
  SurveyResult rebuild(void Function(SurveyResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyResultBuilder toBuilder() => SurveyResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyResult &&
        id == other.id &&
        surveyId == other.surveyId &&
        totalScore == other.totalScore &&
        scores == other.scores &&
        possibleConcern == other.possibleConcern &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, surveyId.hashCode);
    _$hash = $jc(_$hash, totalScore.hashCode);
    _$hash = $jc(_$hash, scores.hashCode);
    _$hash = $jc(_$hash, possibleConcern.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SurveyResult')
          ..add('id', id)
          ..add('surveyId', surveyId)
          ..add('totalScore', totalScore)
          ..add('scores', scores)
          ..add('possibleConcern', possibleConcern)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class SurveyResultBuilder
    implements Builder<SurveyResult, SurveyResultBuilder> {
  _$SurveyResult? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _surveyId;
  String? get surveyId => _$this._surveyId;
  set surveyId(String? surveyId) => _$this._surveyId = surveyId;

  int? _totalScore;
  int? get totalScore => _$this._totalScore;
  set totalScore(int? totalScore) => _$this._totalScore = totalScore;

  MapBuilder<String, int>? _scores;
  MapBuilder<String, int> get scores =>
      _$this._scores ??= MapBuilder<String, int>();
  set scores(MapBuilder<String, int>? scores) => _$this._scores = scores;

  bool? _possibleConcern;
  bool? get possibleConcern => _$this._possibleConcern;
  set possibleConcern(bool? possibleConcern) =>
      _$this._possibleConcern = possibleConcern;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  SurveyResultBuilder() {
    SurveyResult._defaults(this);
  }

  SurveyResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _surveyId = $v.surveyId;
      _totalScore = $v.totalScore;
      _scores = $v.scores.toBuilder();
      _possibleConcern = $v.possibleConcern;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyResult other) {
    _$v = other as _$SurveyResult;
  }

  @override
  void update(void Function(SurveyResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyResult build() => _build();

  _$SurveyResult _build() {
    _$SurveyResult _$result;
    try {
      _$result = _$v ??
          _$SurveyResult._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SurveyResult', 'id'),
            surveyId: BuiltValueNullFieldError.checkNotNull(
                surveyId, r'SurveyResult', 'surveyId'),
            totalScore: BuiltValueNullFieldError.checkNotNull(
                totalScore, r'SurveyResult', 'totalScore'),
            scores: scores.build(),
            possibleConcern: possibleConcern,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'SurveyResult', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scores';
        scores.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SurveyResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
