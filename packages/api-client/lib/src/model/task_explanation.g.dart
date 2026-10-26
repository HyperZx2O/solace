// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_explanation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskExplanation extends TaskExplanation {
  @override
  final String taskKey;
  @override
  final String reason;

  factory _$TaskExplanation([void Function(TaskExplanationBuilder)? updates]) =>
      (TaskExplanationBuilder()..update(updates))._build();

  _$TaskExplanation._({required this.taskKey, required this.reason})
      : super._();
  @override
  TaskExplanation rebuild(void Function(TaskExplanationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskExplanationBuilder toBuilder() => TaskExplanationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskExplanation &&
        taskKey == other.taskKey &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, taskKey.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskExplanation')
          ..add('taskKey', taskKey)
          ..add('reason', reason))
        .toString();
  }
}

class TaskExplanationBuilder
    implements Builder<TaskExplanation, TaskExplanationBuilder> {
  _$TaskExplanation? _$v;

  String? _taskKey;
  String? get taskKey => _$this._taskKey;
  set taskKey(String? taskKey) => _$this._taskKey = taskKey;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  TaskExplanationBuilder() {
    TaskExplanation._defaults(this);
  }

  TaskExplanationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _taskKey = $v.taskKey;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskExplanation other) {
    _$v = other as _$TaskExplanation;
  }

  @override
  void update(void Function(TaskExplanationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskExplanation build() => _build();

  _$TaskExplanation _build() {
    final _$result = _$v ??
        _$TaskExplanation._(
          taskKey: BuiltValueNullFieldError.checkNotNull(
              taskKey, r'TaskExplanation', 'taskKey'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'TaskExplanation', 'reason'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
