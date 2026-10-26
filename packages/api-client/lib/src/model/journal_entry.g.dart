// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JournalEntryAnalysisStatusEnum _$journalEntryAnalysisStatusEnum_pending =
    const JournalEntryAnalysisStatusEnum._('pending');
const JournalEntryAnalysisStatusEnum _$journalEntryAnalysisStatusEnum_queued =
    const JournalEntryAnalysisStatusEnum._('queued');
const JournalEntryAnalysisStatusEnum
    _$journalEntryAnalysisStatusEnum_succeeded =
    const JournalEntryAnalysisStatusEnum._('succeeded');
const JournalEntryAnalysisStatusEnum _$journalEntryAnalysisStatusEnum_failed =
    const JournalEntryAnalysisStatusEnum._('failed');

JournalEntryAnalysisStatusEnum _$journalEntryAnalysisStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'pending':
      return _$journalEntryAnalysisStatusEnum_pending;
    case 'queued':
      return _$journalEntryAnalysisStatusEnum_queued;
    case 'succeeded':
      return _$journalEntryAnalysisStatusEnum_succeeded;
    case 'failed':
      return _$journalEntryAnalysisStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JournalEntryAnalysisStatusEnum>
    _$journalEntryAnalysisStatusEnumValues = BuiltSet<
        JournalEntryAnalysisStatusEnum>(const <JournalEntryAnalysisStatusEnum>[
  _$journalEntryAnalysisStatusEnum_pending,
  _$journalEntryAnalysisStatusEnum_queued,
  _$journalEntryAnalysisStatusEnum_succeeded,
  _$journalEntryAnalysisStatusEnum_failed,
]);

Serializer<JournalEntryAnalysisStatusEnum>
    _$journalEntryAnalysisStatusEnumSerializer =
    _$JournalEntryAnalysisStatusEnumSerializer();

class _$JournalEntryAnalysisStatusEnumSerializer
    implements PrimitiveSerializer<JournalEntryAnalysisStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'queued': 'queued',
    'succeeded': 'succeeded',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'queued': 'queued',
    'succeeded': 'succeeded',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[JournalEntryAnalysisStatusEnum];
  @override
  final String wireName = 'JournalEntryAnalysisStatusEnum';

  @override
  Object serialize(
          Serializers serializers, JournalEntryAnalysisStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JournalEntryAnalysisStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JournalEntryAnalysisStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$JournalEntry extends JournalEntry {
  @override
  final String id;
  @override
  final JournalKind kind;
  @override
  final String clientId;
  @override
  final DateTime clientCreatedAt;
  @override
  final DateTime serverReceivedAt;
  @override
  final JournalEntryAnalysisStatusEnum analysisStatus;
  @override
  final bool? historical;
  @override
  final bool? duplicate;

  factory _$JournalEntry([void Function(JournalEntryBuilder)? updates]) =>
      (JournalEntryBuilder()..update(updates))._build();

  _$JournalEntry._(
      {required this.id,
      required this.kind,
      required this.clientId,
      required this.clientCreatedAt,
      required this.serverReceivedAt,
      required this.analysisStatus,
      this.historical,
      this.duplicate})
      : super._();
  @override
  JournalEntry rebuild(void Function(JournalEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JournalEntryBuilder toBuilder() => JournalEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JournalEntry &&
        id == other.id &&
        kind == other.kind &&
        clientId == other.clientId &&
        clientCreatedAt == other.clientCreatedAt &&
        serverReceivedAt == other.serverReceivedAt &&
        analysisStatus == other.analysisStatus &&
        historical == other.historical &&
        duplicate == other.duplicate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, serverReceivedAt.hashCode);
    _$hash = $jc(_$hash, analysisStatus.hashCode);
    _$hash = $jc(_$hash, historical.hashCode);
    _$hash = $jc(_$hash, duplicate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JournalEntry')
          ..add('id', id)
          ..add('kind', kind)
          ..add('clientId', clientId)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('serverReceivedAt', serverReceivedAt)
          ..add('analysisStatus', analysisStatus)
          ..add('historical', historical)
          ..add('duplicate', duplicate))
        .toString();
  }
}

class JournalEntryBuilder
    implements Builder<JournalEntry, JournalEntryBuilder> {
  _$JournalEntry? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  JournalKind? _kind;
  JournalKind? get kind => _$this._kind;
  set kind(JournalKind? kind) => _$this._kind = kind;

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

  JournalEntryAnalysisStatusEnum? _analysisStatus;
  JournalEntryAnalysisStatusEnum? get analysisStatus => _$this._analysisStatus;
  set analysisStatus(JournalEntryAnalysisStatusEnum? analysisStatus) =>
      _$this._analysisStatus = analysisStatus;

  bool? _historical;
  bool? get historical => _$this._historical;
  set historical(bool? historical) => _$this._historical = historical;

  bool? _duplicate;
  bool? get duplicate => _$this._duplicate;
  set duplicate(bool? duplicate) => _$this._duplicate = duplicate;

  JournalEntryBuilder() {
    JournalEntry._defaults(this);
  }

  JournalEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kind = $v.kind;
      _clientId = $v.clientId;
      _clientCreatedAt = $v.clientCreatedAt;
      _serverReceivedAt = $v.serverReceivedAt;
      _analysisStatus = $v.analysisStatus;
      _historical = $v.historical;
      _duplicate = $v.duplicate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JournalEntry other) {
    _$v = other as _$JournalEntry;
  }

  @override
  void update(void Function(JournalEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JournalEntry build() => _build();

  _$JournalEntry _build() {
    final _$result = _$v ??
        _$JournalEntry._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'JournalEntry', 'id'),
          kind: BuiltValueNullFieldError.checkNotNull(
              kind, r'JournalEntry', 'kind'),
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'JournalEntry', 'clientId'),
          clientCreatedAt: BuiltValueNullFieldError.checkNotNull(
              clientCreatedAt, r'JournalEntry', 'clientCreatedAt'),
          serverReceivedAt: BuiltValueNullFieldError.checkNotNull(
              serverReceivedAt, r'JournalEntry', 'serverReceivedAt'),
          analysisStatus: BuiltValueNullFieldError.checkNotNull(
              analysisStatus, r'JournalEntry', 'analysisStatus'),
          historical: historical,
          duplicate: duplicate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
