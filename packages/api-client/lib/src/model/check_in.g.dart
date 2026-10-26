// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckIn extends CheckIn {
  @override
  final String id;
  @override
  final String? clientId;
  @override
  final int mood;
  @override
  final BuiltList<String> feelingWords;
  @override
  final String? bodySignal;
  @override
  final String? taskReflection;
  @override
  final DateTime? clientCreatedAt;
  @override
  final DateTime serverReceivedAt;
  @override
  final bool? duplicate;

  factory _$CheckIn([void Function(CheckInBuilder)? updates]) =>
      (CheckInBuilder()..update(updates))._build();

  _$CheckIn._(
      {required this.id,
      this.clientId,
      required this.mood,
      required this.feelingWords,
      this.bodySignal,
      this.taskReflection,
      this.clientCreatedAt,
      required this.serverReceivedAt,
      this.duplicate})
      : super._();
  @override
  CheckIn rebuild(void Function(CheckInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckInBuilder toBuilder() => CheckInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckIn &&
        id == other.id &&
        clientId == other.clientId &&
        mood == other.mood &&
        feelingWords == other.feelingWords &&
        bodySignal == other.bodySignal &&
        taskReflection == other.taskReflection &&
        clientCreatedAt == other.clientCreatedAt &&
        serverReceivedAt == other.serverReceivedAt &&
        duplicate == other.duplicate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, mood.hashCode);
    _$hash = $jc(_$hash, feelingWords.hashCode);
    _$hash = $jc(_$hash, bodySignal.hashCode);
    _$hash = $jc(_$hash, taskReflection.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, serverReceivedAt.hashCode);
    _$hash = $jc(_$hash, duplicate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckIn')
          ..add('id', id)
          ..add('clientId', clientId)
          ..add('mood', mood)
          ..add('feelingWords', feelingWords)
          ..add('bodySignal', bodySignal)
          ..add('taskReflection', taskReflection)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('serverReceivedAt', serverReceivedAt)
          ..add('duplicate', duplicate))
        .toString();
  }
}

class CheckInBuilder implements Builder<CheckIn, CheckInBuilder> {
  _$CheckIn? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  int? _mood;
  int? get mood => _$this._mood;
  set mood(int? mood) => _$this._mood = mood;

  ListBuilder<String>? _feelingWords;
  ListBuilder<String> get feelingWords =>
      _$this._feelingWords ??= ListBuilder<String>();
  set feelingWords(ListBuilder<String>? feelingWords) =>
      _$this._feelingWords = feelingWords;

  String? _bodySignal;
  String? get bodySignal => _$this._bodySignal;
  set bodySignal(String? bodySignal) => _$this._bodySignal = bodySignal;

  String? _taskReflection;
  String? get taskReflection => _$this._taskReflection;
  set taskReflection(String? taskReflection) =>
      _$this._taskReflection = taskReflection;

  DateTime? _clientCreatedAt;
  DateTime? get clientCreatedAt => _$this._clientCreatedAt;
  set clientCreatedAt(DateTime? clientCreatedAt) =>
      _$this._clientCreatedAt = clientCreatedAt;

  DateTime? _serverReceivedAt;
  DateTime? get serverReceivedAt => _$this._serverReceivedAt;
  set serverReceivedAt(DateTime? serverReceivedAt) =>
      _$this._serverReceivedAt = serverReceivedAt;

  bool? _duplicate;
  bool? get duplicate => _$this._duplicate;
  set duplicate(bool? duplicate) => _$this._duplicate = duplicate;

  CheckInBuilder() {
    CheckIn._defaults(this);
  }

  CheckInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _clientId = $v.clientId;
      _mood = $v.mood;
      _feelingWords = $v.feelingWords.toBuilder();
      _bodySignal = $v.bodySignal;
      _taskReflection = $v.taskReflection;
      _clientCreatedAt = $v.clientCreatedAt;
      _serverReceivedAt = $v.serverReceivedAt;
      _duplicate = $v.duplicate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckIn other) {
    _$v = other as _$CheckIn;
  }

  @override
  void update(void Function(CheckInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckIn build() => _build();

  _$CheckIn _build() {
    _$CheckIn _$result;
    try {
      _$result = _$v ??
          _$CheckIn._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'CheckIn', 'id'),
            clientId: clientId,
            mood:
                BuiltValueNullFieldError.checkNotNull(mood, r'CheckIn', 'mood'),
            feelingWords: feelingWords.build(),
            bodySignal: bodySignal,
            taskReflection: taskReflection,
            clientCreatedAt: clientCreatedAt,
            serverReceivedAt: BuiltValueNullFieldError.checkNotNull(
                serverReceivedAt, r'CheckIn', 'serverReceivedAt'),
            duplicate: duplicate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feelingWords';
        feelingWords.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CheckIn', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
