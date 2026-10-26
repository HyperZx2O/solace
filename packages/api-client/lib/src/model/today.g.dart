// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Today extends Today {
  @override
  final TaskAssignment task;
  @override
  final bool canSwap;
  @override
  final bool checkInDone;
  @override
  final bool? reflectionAvailable;

  factory _$Today([void Function(TodayBuilder)? updates]) =>
      (TodayBuilder()..update(updates))._build();

  _$Today._(
      {required this.task,
      required this.canSwap,
      required this.checkInDone,
      this.reflectionAvailable})
      : super._();
  @override
  Today rebuild(void Function(TodayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodayBuilder toBuilder() => TodayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Today &&
        task == other.task &&
        canSwap == other.canSwap &&
        checkInDone == other.checkInDone &&
        reflectionAvailable == other.reflectionAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, task.hashCode);
    _$hash = $jc(_$hash, canSwap.hashCode);
    _$hash = $jc(_$hash, checkInDone.hashCode);
    _$hash = $jc(_$hash, reflectionAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Today')
          ..add('task', task)
          ..add('canSwap', canSwap)
          ..add('checkInDone', checkInDone)
          ..add('reflectionAvailable', reflectionAvailable))
        .toString();
  }
}

class TodayBuilder implements Builder<Today, TodayBuilder> {
  _$Today? _$v;

  TaskAssignmentBuilder? _task;
  TaskAssignmentBuilder get task => _$this._task ??= TaskAssignmentBuilder();
  set task(TaskAssignmentBuilder? task) => _$this._task = task;

  bool? _canSwap;
  bool? get canSwap => _$this._canSwap;
  set canSwap(bool? canSwap) => _$this._canSwap = canSwap;

  bool? _checkInDone;
  bool? get checkInDone => _$this._checkInDone;
  set checkInDone(bool? checkInDone) => _$this._checkInDone = checkInDone;

  bool? _reflectionAvailable;
  bool? get reflectionAvailable => _$this._reflectionAvailable;
  set reflectionAvailable(bool? reflectionAvailable) =>
      _$this._reflectionAvailable = reflectionAvailable;

  TodayBuilder() {
    Today._defaults(this);
  }

  TodayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _canSwap = $v.canSwap;
      _checkInDone = $v.checkInDone;
      _reflectionAvailable = $v.reflectionAvailable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Today other) {
    _$v = other as _$Today;
  }

  @override
  void update(void Function(TodayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Today build() => _build();

  _$Today _build() {
    _$Today _$result;
    try {
      _$result = _$v ??
          _$Today._(
            task: task.build(),
            canSwap: BuiltValueNullFieldError.checkNotNull(
                canSwap, r'Today', 'canSwap'),
            checkInDone: BuiltValueNullFieldError.checkNotNull(
                checkInDone, r'Today', 'checkInDone'),
            reflectionAvailable: reflectionAvailable,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Today', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
