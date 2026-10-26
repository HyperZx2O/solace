// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExportRequestStatusEnum _$exportRequestStatusEnum_pending =
    const ExportRequestStatusEnum._('pending');
const ExportRequestStatusEnum _$exportRequestStatusEnum_confirmed =
    const ExportRequestStatusEnum._('confirmed');
const ExportRequestStatusEnum _$exportRequestStatusEnum_completed =
    const ExportRequestStatusEnum._('completed');
const ExportRequestStatusEnum _$exportRequestStatusEnum_cancelled =
    const ExportRequestStatusEnum._('cancelled');

ExportRequestStatusEnum _$exportRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$exportRequestStatusEnum_pending;
    case 'confirmed':
      return _$exportRequestStatusEnum_confirmed;
    case 'completed':
      return _$exportRequestStatusEnum_completed;
    case 'cancelled':
      return _$exportRequestStatusEnum_cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExportRequestStatusEnum> _$exportRequestStatusEnumValues =
    BuiltSet<ExportRequestStatusEnum>(const <ExportRequestStatusEnum>[
  _$exportRequestStatusEnum_pending,
  _$exportRequestStatusEnum_confirmed,
  _$exportRequestStatusEnum_completed,
  _$exportRequestStatusEnum_cancelled,
]);

Serializer<ExportRequestStatusEnum> _$exportRequestStatusEnumSerializer =
    _$ExportRequestStatusEnumSerializer();

class _$ExportRequestStatusEnumSerializer
    implements PrimitiveSerializer<ExportRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[ExportRequestStatusEnum];
  @override
  final String wireName = 'ExportRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, ExportRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExportRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExportRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExportRequest extends ExportRequest {
  @override
  final String id;
  @override
  final ExportRequestStatusEnum status;
  @override
  final DateTime requestedAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? expiresAt;

  factory _$ExportRequest([void Function(ExportRequestBuilder)? updates]) =>
      (ExportRequestBuilder()..update(updates))._build();

  _$ExportRequest._(
      {required this.id,
      required this.status,
      required this.requestedAt,
      this.completedAt,
      this.expiresAt})
      : super._();
  @override
  ExportRequest rebuild(void Function(ExportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportRequestBuilder toBuilder() => ExportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportRequest &&
        id == other.id &&
        status == other.status &&
        requestedAt == other.requestedAt &&
        completedAt == other.completedAt &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, requestedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportRequest')
          ..add('id', id)
          ..add('status', status)
          ..add('requestedAt', requestedAt)
          ..add('completedAt', completedAt)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ExportRequestBuilder
    implements Builder<ExportRequest, ExportRequestBuilder> {
  _$ExportRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ExportRequestStatusEnum? _status;
  ExportRequestStatusEnum? get status => _$this._status;
  set status(ExportRequestStatusEnum? status) => _$this._status = status;

  DateTime? _requestedAt;
  DateTime? get requestedAt => _$this._requestedAt;
  set requestedAt(DateTime? requestedAt) => _$this._requestedAt = requestedAt;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ExportRequestBuilder() {
    ExportRequest._defaults(this);
  }

  ExportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _requestedAt = $v.requestedAt;
      _completedAt = $v.completedAt;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportRequest other) {
    _$v = other as _$ExportRequest;
  }

  @override
  void update(void Function(ExportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportRequest build() => _build();

  _$ExportRequest _build() {
    final _$result = _$v ??
        _$ExportRequest._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ExportRequest', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ExportRequest', 'status'),
          requestedAt: BuiltValueNullFieldError.checkNotNull(
              requestedAt, r'ExportRequest', 'requestedAt'),
          completedAt: completedAt,
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
