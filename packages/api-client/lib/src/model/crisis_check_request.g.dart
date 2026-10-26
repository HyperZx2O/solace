// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crisis_check_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CrisisCheckRequestSource_Enum _$crisisCheckRequestSourceEnum_journal =
    const CrisisCheckRequestSource_Enum._('journal');
const CrisisCheckRequestSource_Enum _$crisisCheckRequestSourceEnum_checkin =
    const CrisisCheckRequestSource_Enum._('checkin');
const CrisisCheckRequestSource_Enum
    _$crisisCheckRequestSourceEnum_taskReflection =
    const CrisisCheckRequestSource_Enum._('taskReflection');

CrisisCheckRequestSource_Enum _$crisisCheckRequestSourceEnumValueOf(
    String name) {
  switch (name) {
    case 'journal':
      return _$crisisCheckRequestSourceEnum_journal;
    case 'checkin':
      return _$crisisCheckRequestSourceEnum_checkin;
    case 'taskReflection':
      return _$crisisCheckRequestSourceEnum_taskReflection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CrisisCheckRequestSource_Enum>
    _$crisisCheckRequestSourceEnumValues = BuiltSet<
        CrisisCheckRequestSource_Enum>(const <CrisisCheckRequestSource_Enum>[
  _$crisisCheckRequestSourceEnum_journal,
  _$crisisCheckRequestSourceEnum_checkin,
  _$crisisCheckRequestSourceEnum_taskReflection,
]);

Serializer<CrisisCheckRequestSource_Enum>
    _$crisisCheckRequestSourceEnumSerializer =
    _$CrisisCheckRequestSource_EnumSerializer();

class _$CrisisCheckRequestSource_EnumSerializer
    implements PrimitiveSerializer<CrisisCheckRequestSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'journal': 'journal',
    'checkin': 'checkin',
    'taskReflection': 'task_reflection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'journal': 'journal',
    'checkin': 'checkin',
    'task_reflection': 'taskReflection',
  };

  @override
  final Iterable<Type> types = const <Type>[CrisisCheckRequestSource_Enum];
  @override
  final String wireName = 'CrisisCheckRequestSource_Enum';

  @override
  Object serialize(
          Serializers serializers, CrisisCheckRequestSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CrisisCheckRequestSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CrisisCheckRequestSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CrisisCheckRequest extends CrisisCheckRequest {
  @override
  final String clientId;
  @override
  final DateTime clientCreatedAt;
  @override
  final CrisisCheckRequestSource_Enum source_;
  @override
  final String text;
  @override
  final String? entryId;

  factory _$CrisisCheckRequest(
          [void Function(CrisisCheckRequestBuilder)? updates]) =>
      (CrisisCheckRequestBuilder()..update(updates))._build();

  _$CrisisCheckRequest._(
      {required this.clientId,
      required this.clientCreatedAt,
      required this.source_,
      required this.text,
      this.entryId})
      : super._();
  @override
  CrisisCheckRequest rebuild(
          void Function(CrisisCheckRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrisisCheckRequestBuilder toBuilder() =>
      CrisisCheckRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrisisCheckRequest &&
        clientId == other.clientId &&
        clientCreatedAt == other.clientCreatedAt &&
        source_ == other.source_ &&
        text == other.text &&
        entryId == other.entryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, entryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CrisisCheckRequest')
          ..add('clientId', clientId)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('source_', source_)
          ..add('text', text)
          ..add('entryId', entryId))
        .toString();
  }
}

class CrisisCheckRequestBuilder
    implements Builder<CrisisCheckRequest, CrisisCheckRequestBuilder> {
  _$CrisisCheckRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  DateTime? _clientCreatedAt;
  DateTime? get clientCreatedAt => _$this._clientCreatedAt;
  set clientCreatedAt(DateTime? clientCreatedAt) =>
      _$this._clientCreatedAt = clientCreatedAt;

  CrisisCheckRequestSource_Enum? _source_;
  CrisisCheckRequestSource_Enum? get source_ => _$this._source_;
  set source_(CrisisCheckRequestSource_Enum? source_) =>
      _$this._source_ = source_;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _entryId;
  String? get entryId => _$this._entryId;
  set entryId(String? entryId) => _$this._entryId = entryId;

  CrisisCheckRequestBuilder() {
    CrisisCheckRequest._defaults(this);
  }

  CrisisCheckRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientCreatedAt = $v.clientCreatedAt;
      _source_ = $v.source_;
      _text = $v.text;
      _entryId = $v.entryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CrisisCheckRequest other) {
    _$v = other as _$CrisisCheckRequest;
  }

  @override
  void update(void Function(CrisisCheckRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CrisisCheckRequest build() => _build();

  _$CrisisCheckRequest _build() {
    final _$result = _$v ??
        _$CrisisCheckRequest._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'CrisisCheckRequest', 'clientId'),
          clientCreatedAt: BuiltValueNullFieldError.checkNotNull(
              clientCreatedAt, r'CrisisCheckRequest', 'clientCreatedAt'),
          source_: BuiltValueNullFieldError.checkNotNull(
              source_, r'CrisisCheckRequest', 'source_'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'CrisisCheckRequest', 'text'),
          entryId: entryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
