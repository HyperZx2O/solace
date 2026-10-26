// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SyncResultOutcomeEnum _$syncResultOutcomeEnum_accepted =
    const SyncResultOutcomeEnum._('accepted');
const SyncResultOutcomeEnum _$syncResultOutcomeEnum_duplicate =
    const SyncResultOutcomeEnum._('duplicate');
const SyncResultOutcomeEnum _$syncResultOutcomeEnum_historicalFlagged =
    const SyncResultOutcomeEnum._('historicalFlagged');
const SyncResultOutcomeEnum _$syncResultOutcomeEnum_rejected =
    const SyncResultOutcomeEnum._('rejected');

SyncResultOutcomeEnum _$syncResultOutcomeEnumValueOf(String name) {
  switch (name) {
    case 'accepted':
      return _$syncResultOutcomeEnum_accepted;
    case 'duplicate':
      return _$syncResultOutcomeEnum_duplicate;
    case 'historicalFlagged':
      return _$syncResultOutcomeEnum_historicalFlagged;
    case 'rejected':
      return _$syncResultOutcomeEnum_rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SyncResultOutcomeEnum> _$syncResultOutcomeEnumValues =
    BuiltSet<SyncResultOutcomeEnum>(const <SyncResultOutcomeEnum>[
  _$syncResultOutcomeEnum_accepted,
  _$syncResultOutcomeEnum_duplicate,
  _$syncResultOutcomeEnum_historicalFlagged,
  _$syncResultOutcomeEnum_rejected,
]);

Serializer<SyncResultOutcomeEnum> _$syncResultOutcomeEnumSerializer =
    _$SyncResultOutcomeEnumSerializer();

class _$SyncResultOutcomeEnumSerializer
    implements PrimitiveSerializer<SyncResultOutcomeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'accepted': 'accepted',
    'duplicate': 'duplicate',
    'historicalFlagged': 'historical_flagged',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'accepted': 'accepted',
    'duplicate': 'duplicate',
    'historical_flagged': 'historicalFlagged',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[SyncResultOutcomeEnum];
  @override
  final String wireName = 'SyncResultOutcomeEnum';

  @override
  Object serialize(Serializers serializers, SyncResultOutcomeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SyncResultOutcomeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SyncResultOutcomeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SyncResult extends SyncResult {
  @override
  final String clientId;
  @override
  final SyncResultOutcomeEnum outcome;
  @override
  final String? id;
  @override
  final String? error;

  factory _$SyncResult([void Function(SyncResultBuilder)? updates]) =>
      (SyncResultBuilder()..update(updates))._build();

  _$SyncResult._(
      {required this.clientId, required this.outcome, this.id, this.error})
      : super._();
  @override
  SyncResult rebuild(void Function(SyncResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncResultBuilder toBuilder() => SyncResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncResult &&
        clientId == other.clientId &&
        outcome == other.outcome &&
        id == other.id &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SyncResult')
          ..add('clientId', clientId)
          ..add('outcome', outcome)
          ..add('id', id)
          ..add('error', error))
        .toString();
  }
}

class SyncResultBuilder implements Builder<SyncResult, SyncResultBuilder> {
  _$SyncResult? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  SyncResultOutcomeEnum? _outcome;
  SyncResultOutcomeEnum? get outcome => _$this._outcome;
  set outcome(SyncResultOutcomeEnum? outcome) => _$this._outcome = outcome;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  SyncResultBuilder() {
    SyncResult._defaults(this);
  }

  SyncResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _outcome = $v.outcome;
      _id = $v.id;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncResult other) {
    _$v = other as _$SyncResult;
  }

  @override
  void update(void Function(SyncResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncResult build() => _build();

  _$SyncResult _build() {
    final _$result = _$v ??
        _$SyncResult._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'SyncResult', 'clientId'),
          outcome: BuiltValueNullFieldError.checkNotNull(
              outcome, r'SyncResult', 'outcome'),
          id: id,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
