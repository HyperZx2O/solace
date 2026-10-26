// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyResponseStatusEnum _$surveyResponseStatusEnum_inProgress =
    const SurveyResponseStatusEnum._('inProgress');
const SurveyResponseStatusEnum _$surveyResponseStatusEnum_completed =
    const SurveyResponseStatusEnum._('completed');

SurveyResponseStatusEnum _$surveyResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'inProgress':
      return _$surveyResponseStatusEnum_inProgress;
    case 'completed':
      return _$surveyResponseStatusEnum_completed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SurveyResponseStatusEnum> _$surveyResponseStatusEnumValues =
    BuiltSet<SurveyResponseStatusEnum>(const <SurveyResponseStatusEnum>[
  _$surveyResponseStatusEnum_inProgress,
  _$surveyResponseStatusEnum_completed,
]);

Serializer<SurveyResponseStatusEnum> _$surveyResponseStatusEnumSerializer =
    _$SurveyResponseStatusEnumSerializer();

class _$SurveyResponseStatusEnumSerializer
    implements PrimitiveSerializer<SurveyResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'inProgress': 'in_progress',
    'completed': 'completed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'in_progress': 'inProgress',
    'completed': 'completed',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyResponseStatusEnum];
  @override
  final String wireName = 'SurveyResponseStatusEnum';

  @override
  Object serialize(Serializers serializers, SurveyResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyResponseStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SurveyResponse extends SurveyResponse {
  @override
  final String id;
  @override
  final String surveyId;
  @override
  final SurveyResponseStatusEnum status;
  @override
  final String clientId;
  @override
  final DateTime? clientCreatedAt;
  @override
  final DateTime serverReceivedAt;
  @override
  final bool? duplicate;

  factory _$SurveyResponse([void Function(SurveyResponseBuilder)? updates]) =>
      (SurveyResponseBuilder()..update(updates))._build();

  _$SurveyResponse._(
      {required this.id,
      required this.surveyId,
      required this.status,
      required this.clientId,
      this.clientCreatedAt,
      required this.serverReceivedAt,
      this.duplicate})
      : super._();
  @override
  SurveyResponse rebuild(void Function(SurveyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyResponseBuilder toBuilder() => SurveyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyResponse &&
        id == other.id &&
        surveyId == other.surveyId &&
        status == other.status &&
        clientId == other.clientId &&
        clientCreatedAt == other.clientCreatedAt &&
        serverReceivedAt == other.serverReceivedAt &&
        duplicate == other.duplicate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, surveyId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, serverReceivedAt.hashCode);
    _$hash = $jc(_$hash, duplicate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SurveyResponse')
          ..add('id', id)
          ..add('surveyId', surveyId)
          ..add('status', status)
          ..add('clientId', clientId)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('serverReceivedAt', serverReceivedAt)
          ..add('duplicate', duplicate))
        .toString();
  }
}

class SurveyResponseBuilder
    implements Builder<SurveyResponse, SurveyResponseBuilder> {
  _$SurveyResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _surveyId;
  String? get surveyId => _$this._surveyId;
  set surveyId(String? surveyId) => _$this._surveyId = surveyId;

  SurveyResponseStatusEnum? _status;
  SurveyResponseStatusEnum? get status => _$this._status;
  set status(SurveyResponseStatusEnum? status) => _$this._status = status;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

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

  SurveyResponseBuilder() {
    SurveyResponse._defaults(this);
  }

  SurveyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _surveyId = $v.surveyId;
      _status = $v.status;
      _clientId = $v.clientId;
      _clientCreatedAt = $v.clientCreatedAt;
      _serverReceivedAt = $v.serverReceivedAt;
      _duplicate = $v.duplicate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyResponse other) {
    _$v = other as _$SurveyResponse;
  }

  @override
  void update(void Function(SurveyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyResponse build() => _build();

  _$SurveyResponse _build() {
    final _$result = _$v ??
        _$SurveyResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SurveyResponse', 'id'),
          surveyId: BuiltValueNullFieldError.checkNotNull(
              surveyId, r'SurveyResponse', 'surveyId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'SurveyResponse', 'status'),
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'SurveyResponse', 'clientId'),
          clientCreatedAt: clientCreatedAt,
          serverReceivedAt: BuiltValueNullFieldError.checkNotNull(
              serverReceivedAt, r'SurveyResponse', 'serverReceivedAt'),
          duplicate: duplicate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
