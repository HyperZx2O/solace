// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_feedback_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskFeedbackRequest extends TaskFeedbackRequest {
  @override
  final int helpRating;

  factory _$TaskFeedbackRequest(
          [void Function(TaskFeedbackRequestBuilder)? updates]) =>
      (TaskFeedbackRequestBuilder()..update(updates))._build();

  _$TaskFeedbackRequest._({required this.helpRating}) : super._();
  @override
  TaskFeedbackRequest rebuild(
          void Function(TaskFeedbackRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskFeedbackRequestBuilder toBuilder() =>
      TaskFeedbackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskFeedbackRequest && helpRating == other.helpRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, helpRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskFeedbackRequest')
          ..add('helpRating', helpRating))
        .toString();
  }
}

class TaskFeedbackRequestBuilder
    implements Builder<TaskFeedbackRequest, TaskFeedbackRequestBuilder> {
  _$TaskFeedbackRequest? _$v;

  int? _helpRating;
  int? get helpRating => _$this._helpRating;
  set helpRating(int? helpRating) => _$this._helpRating = helpRating;

  TaskFeedbackRequestBuilder() {
    TaskFeedbackRequest._defaults(this);
  }

  TaskFeedbackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _helpRating = $v.helpRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskFeedbackRequest other) {
    _$v = other as _$TaskFeedbackRequest;
  }

  @override
  void update(void Function(TaskFeedbackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskFeedbackRequest build() => _build();

  _$TaskFeedbackRequest _build() {
    final _$result = _$v ??
        _$TaskFeedbackRequest._(
          helpRating: BuiltValueNullFieldError.checkNotNull(
              helpRating, r'TaskFeedbackRequest', 'helpRating'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
