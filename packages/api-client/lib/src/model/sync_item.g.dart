// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SyncItemKindEnum _$syncItemKindEnum_checkIn =
    const SyncItemKindEnum._('checkIn');
const SyncItemKindEnum _$syncItemKindEnum_journalEntry =
    const SyncItemKindEnum._('journalEntry');
const SyncItemKindEnum _$syncItemKindEnum_taskCompletion =
    const SyncItemKindEnum._('taskCompletion');
const SyncItemKindEnum _$syncItemKindEnum_surveyResponse =
    const SyncItemKindEnum._('surveyResponse');

SyncItemKindEnum _$syncItemKindEnumValueOf(String name) {
  switch (name) {
    case 'checkIn':
      return _$syncItemKindEnum_checkIn;
    case 'journalEntry':
      return _$syncItemKindEnum_journalEntry;
    case 'taskCompletion':
      return _$syncItemKindEnum_taskCompletion;
    case 'surveyResponse':
      return _$syncItemKindEnum_surveyResponse;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SyncItemKindEnum> _$syncItemKindEnumValues =
    BuiltSet<SyncItemKindEnum>(const <SyncItemKindEnum>[
  _$syncItemKindEnum_checkIn,
  _$syncItemKindEnum_journalEntry,
  _$syncItemKindEnum_taskCompletion,
  _$syncItemKindEnum_surveyResponse,
]);

Serializer<SyncItemKindEnum> _$syncItemKindEnumSerializer =
    _$SyncItemKindEnumSerializer();

class _$SyncItemKindEnumSerializer
    implements PrimitiveSerializer<SyncItemKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'checkIn': 'check_in',
    'journalEntry': 'journal_entry',
    'taskCompletion': 'task_completion',
    'surveyResponse': 'survey_response',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'check_in': 'checkIn',
    'journal_entry': 'journalEntry',
    'task_completion': 'taskCompletion',
    'survey_response': 'surveyResponse',
  };

  @override
  final Iterable<Type> types = const <Type>[SyncItemKindEnum];
  @override
  final String wireName = 'SyncItemKindEnum';

  @override
  Object serialize(Serializers serializers, SyncItemKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SyncItemKindEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SyncItemKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SyncItem extends SyncItem {
  @override
  final String clientId;
  @override
  final SyncItemKindEnum kind;
  @override
  final DateTime clientCreatedAt;
  @override
  final JsonObject payload;

  factory _$SyncItem([void Function(SyncItemBuilder)? updates]) =>
      (SyncItemBuilder()..update(updates))._build();

  _$SyncItem._(
      {required this.clientId,
      required this.kind,
      required this.clientCreatedAt,
      required this.payload})
      : super._();
  @override
  SyncItem rebuild(void Function(SyncItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncItemBuilder toBuilder() => SyncItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncItem &&
        clientId == other.clientId &&
        kind == other.kind &&
        clientCreatedAt == other.clientCreatedAt &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SyncItem')
          ..add('clientId', clientId)
          ..add('kind', kind)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('payload', payload))
        .toString();
  }
}

class SyncItemBuilder implements Builder<SyncItem, SyncItemBuilder> {
  _$SyncItem? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  SyncItemKindEnum? _kind;
  SyncItemKindEnum? get kind => _$this._kind;
  set kind(SyncItemKindEnum? kind) => _$this._kind = kind;

  DateTime? _clientCreatedAt;
  DateTime? get clientCreatedAt => _$this._clientCreatedAt;
  set clientCreatedAt(DateTime? clientCreatedAt) =>
      _$this._clientCreatedAt = clientCreatedAt;

  JsonObject? _payload;
  JsonObject? get payload => _$this._payload;
  set payload(JsonObject? payload) => _$this._payload = payload;

  SyncItemBuilder() {
    SyncItem._defaults(this);
  }

  SyncItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _kind = $v.kind;
      _clientCreatedAt = $v.clientCreatedAt;
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncItem other) {
    _$v = other as _$SyncItem;
  }

  @override
  void update(void Function(SyncItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncItem build() => _build();

  _$SyncItem _build() {
    final _$result = _$v ??
        _$SyncItem._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'SyncItem', 'clientId'),
          kind:
              BuiltValueNullFieldError.checkNotNull(kind, r'SyncItem', 'kind'),
          clientCreatedAt: BuiltValueNullFieldError.checkNotNull(
              clientCreatedAt, r'SyncItem', 'clientCreatedAt'),
          payload: BuiltValueNullFieldError.checkNotNull(
              payload, r'SyncItem', 'payload'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
