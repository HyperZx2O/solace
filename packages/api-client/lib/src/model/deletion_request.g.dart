// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletion_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeletionRequestStatusEnum _$deletionRequestStatusEnum_pending =
    const DeletionRequestStatusEnum._('pending');
const DeletionRequestStatusEnum _$deletionRequestStatusEnum_confirmed =
    const DeletionRequestStatusEnum._('confirmed');
const DeletionRequestStatusEnum _$deletionRequestStatusEnum_completed =
    const DeletionRequestStatusEnum._('completed');
const DeletionRequestStatusEnum _$deletionRequestStatusEnum_cancelled =
    const DeletionRequestStatusEnum._('cancelled');

DeletionRequestStatusEnum _$deletionRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$deletionRequestStatusEnum_pending;
    case 'confirmed':
      return _$deletionRequestStatusEnum_confirmed;
    case 'completed':
      return _$deletionRequestStatusEnum_completed;
    case 'cancelled':
      return _$deletionRequestStatusEnum_cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeletionRequestStatusEnum> _$deletionRequestStatusEnumValues =
    BuiltSet<DeletionRequestStatusEnum>(const <DeletionRequestStatusEnum>[
  _$deletionRequestStatusEnum_pending,
  _$deletionRequestStatusEnum_confirmed,
  _$deletionRequestStatusEnum_completed,
  _$deletionRequestStatusEnum_cancelled,
]);

Serializer<DeletionRequestStatusEnum> _$deletionRequestStatusEnumSerializer =
    _$DeletionRequestStatusEnumSerializer();

class _$DeletionRequestStatusEnumSerializer
    implements PrimitiveSerializer<DeletionRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'completed': 'completed',
    'cancelled': 'cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'completed': 'completed',
    'cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[DeletionRequestStatusEnum];
  @override
  final String wireName = 'DeletionRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, DeletionRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeletionRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeletionRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeletionRequest extends DeletionRequest {
  @override
  final String id;
  @override
  final DeletionRequestStatusEnum status;
  @override
  final String referenceNumber;
  @override
  final DateTime requestedAt;
  @override
  final DateTime? completedAt;

  factory _$DeletionRequest([void Function(DeletionRequestBuilder)? updates]) =>
      (DeletionRequestBuilder()..update(updates))._build();

  _$DeletionRequest._(
      {required this.id,
      required this.status,
      required this.referenceNumber,
      required this.requestedAt,
      this.completedAt})
      : super._();
  @override
  DeletionRequest rebuild(void Function(DeletionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletionRequestBuilder toBuilder() => DeletionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletionRequest &&
        id == other.id &&
        status == other.status &&
        referenceNumber == other.referenceNumber &&
        requestedAt == other.requestedAt &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, referenceNumber.hashCode);
    _$hash = $jc(_$hash, requestedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeletionRequest')
          ..add('id', id)
          ..add('status', status)
          ..add('referenceNumber', referenceNumber)
          ..add('requestedAt', requestedAt)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class DeletionRequestBuilder
    implements Builder<DeletionRequest, DeletionRequestBuilder> {
  _$DeletionRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeletionRequestStatusEnum? _status;
  DeletionRequestStatusEnum? get status => _$this._status;
  set status(DeletionRequestStatusEnum? status) => _$this._status = status;

  String? _referenceNumber;
  String? get referenceNumber => _$this._referenceNumber;
  set referenceNumber(String? referenceNumber) =>
      _$this._referenceNumber = referenceNumber;

  DateTime? _requestedAt;
  DateTime? get requestedAt => _$this._requestedAt;
  set requestedAt(DateTime? requestedAt) => _$this._requestedAt = requestedAt;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  DeletionRequestBuilder() {
    DeletionRequest._defaults(this);
  }

  DeletionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _referenceNumber = $v.referenceNumber;
      _requestedAt = $v.requestedAt;
      _completedAt = $v.completedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletionRequest other) {
    _$v = other as _$DeletionRequest;
  }

  @override
  void update(void Function(DeletionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletionRequest build() => _build();

  _$DeletionRequest _build() {
    final _$result = _$v ??
        _$DeletionRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'DeletionRequest', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'DeletionRequest', 'status'),
          referenceNumber: BuiltValueNullFieldError.checkNotNull(
              referenceNumber, r'DeletionRequest', 'referenceNumber'),
          requestedAt: BuiltValueNullFieldError.checkNotNull(
              requestedAt, r'DeletionRequest', 'requestedAt'),
          completedAt: completedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
