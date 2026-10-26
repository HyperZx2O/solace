// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_assignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskAssignment extends TaskAssignment {
  @override
  final String id;
  @override
  final String taskKey;
  @override
  final String? title;
  @override
  final Date assignedFor;
  @override
  final DateTime completedAt;
  @override
  final String? swapReason;

  factory _$TaskAssignment([void Function(TaskAssignmentBuilder)? updates]) =>
      (TaskAssignmentBuilder()..update(updates))._build();

  _$TaskAssignment._(
      {required this.id,
      required this.taskKey,
      this.title,
      required this.assignedFor,
      required this.completedAt,
      this.swapReason})
      : super._();
  @override
  TaskAssignment rebuild(void Function(TaskAssignmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskAssignmentBuilder toBuilder() => TaskAssignmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskAssignment &&
        id == other.id &&
        taskKey == other.taskKey &&
        title == other.title &&
        assignedFor == other.assignedFor &&
        completedAt == other.completedAt &&
        swapReason == other.swapReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, taskKey.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, assignedFor.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, swapReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskAssignment')
          ..add('id', id)
          ..add('taskKey', taskKey)
          ..add('title', title)
          ..add('assignedFor', assignedFor)
          ..add('completedAt', completedAt)
          ..add('swapReason', swapReason))
        .toString();
  }
}

class TaskAssignmentBuilder
    implements Builder<TaskAssignment, TaskAssignmentBuilder> {
  _$TaskAssignment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _taskKey;
  String? get taskKey => _$this._taskKey;
  set taskKey(String? taskKey) => _$this._taskKey = taskKey;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Date? _assignedFor;
  Date? get assignedFor => _$this._assignedFor;
  set assignedFor(Date? assignedFor) => _$this._assignedFor = assignedFor;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  String? _swapReason;
  String? get swapReason => _$this._swapReason;
  set swapReason(String? swapReason) => _$this._swapReason = swapReason;

  TaskAssignmentBuilder() {
    TaskAssignment._defaults(this);
  }

  TaskAssignmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _taskKey = $v.taskKey;
      _title = $v.title;
      _assignedFor = $v.assignedFor;
      _completedAt = $v.completedAt;
      _swapReason = $v.swapReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskAssignment other) {
    _$v = other as _$TaskAssignment;
  }

  @override
  void update(void Function(TaskAssignmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskAssignment build() => _build();

  _$TaskAssignment _build() {
    final _$result = _$v ??
        _$TaskAssignment._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TaskAssignment', 'id'),
          taskKey: BuiltValueNullFieldError.checkNotNull(
              taskKey, r'TaskAssignment', 'taskKey'),
          title: title,
          assignedFor: BuiltValueNullFieldError.checkNotNull(
              assignedFor, r'TaskAssignment', 'assignedFor'),
          completedAt: BuiltValueNullFieldError.checkNotNull(
              completedAt, r'TaskAssignment', 'completedAt'),
          swapReason: swapReason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
