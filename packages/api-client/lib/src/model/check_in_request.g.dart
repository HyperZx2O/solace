// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckInRequest extends CheckInRequest {
  @override
  final String clientId;
  @override
  final DateTime clientCreatedAt;
  @override
  final int mood;
  @override
  final BuiltList<String> feelingWords;
  @override
  final String? bodySignal;
  @override
  final String? taskReflection;

  factory _$CheckInRequest([void Function(CheckInRequestBuilder)? updates]) =>
      (CheckInRequestBuilder()..update(updates))._build();

  _$CheckInRequest._(
      {required this.clientId,
      required this.clientCreatedAt,
      required this.mood,
      required this.feelingWords,
      this.bodySignal,
      this.taskReflection})
      : super._();
  @override
  CheckInRequest rebuild(void Function(CheckInRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckInRequestBuilder toBuilder() => CheckInRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckInRequest &&
        clientId == other.clientId &&
        clientCreatedAt == other.clientCreatedAt &&
        mood == other.mood &&
        feelingWords == other.feelingWords &&
        bodySignal == other.bodySignal &&
        taskReflection == other.taskReflection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, mood.hashCode);
    _$hash = $jc(_$hash, feelingWords.hashCode);
    _$hash = $jc(_$hash, bodySignal.hashCode);
    _$hash = $jc(_$hash, taskReflection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckInRequest')
          ..add('clientId', clientId)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('mood', mood)
          ..add('feelingWords', feelingWords)
          ..add('bodySignal', bodySignal)
          ..add('taskReflection', taskReflection))
        .toString();
  }
}

class CheckInRequestBuilder
    implements Builder<CheckInRequest, CheckInRequestBuilder> {
  _$CheckInRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  DateTime? _clientCreatedAt;
  DateTime? get clientCreatedAt => _$this._clientCreatedAt;
  set clientCreatedAt(DateTime? clientCreatedAt) =>
      _$this._clientCreatedAt = clientCreatedAt;

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

  CheckInRequestBuilder() {
    CheckInRequest._defaults(this);
  }

  CheckInRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientCreatedAt = $v.clientCreatedAt;
      _mood = $v.mood;
      _feelingWords = $v.feelingWords.toBuilder();
      _bodySignal = $v.bodySignal;
      _taskReflection = $v.taskReflection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckInRequest other) {
    _$v = other as _$CheckInRequest;
  }

  @override
  void update(void Function(CheckInRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckInRequest build() => _build();

  _$CheckInRequest _build() {
    _$CheckInRequest _$result;
    try {
      _$result = _$v ??
          _$CheckInRequest._(
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, r'CheckInRequest', 'clientId'),
            clientCreatedAt: BuiltValueNullFieldError.checkNotNull(
                clientCreatedAt, r'CheckInRequest', 'clientCreatedAt'),
            mood: BuiltValueNullFieldError.checkNotNull(
                mood, r'CheckInRequest', 'mood'),
            feelingWords: feelingWords.build(),
            bodySignal: bodySignal,
            taskReflection: taskReflection,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feelingWords';
        feelingWords.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CheckInRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
