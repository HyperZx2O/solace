// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WithdrawalRequestStatusEnum _$withdrawalRequestStatusEnum_pending =
    const WithdrawalRequestStatusEnum._('pending');
const WithdrawalRequestStatusEnum _$withdrawalRequestStatusEnum_confirmed =
    const WithdrawalRequestStatusEnum._('confirmed');
const WithdrawalRequestStatusEnum _$withdrawalRequestStatusEnum_cancelled =
    const WithdrawalRequestStatusEnum._('cancelled');
const WithdrawalRequestStatusEnum _$withdrawalRequestStatusEnum_expired =
    const WithdrawalRequestStatusEnum._('expired');

WithdrawalRequestStatusEnum _$withdrawalRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$withdrawalRequestStatusEnum_pending;
    case 'confirmed':
      return _$withdrawalRequestStatusEnum_confirmed;
    case 'cancelled':
      return _$withdrawalRequestStatusEnum_cancelled;
    case 'expired':
      return _$withdrawalRequestStatusEnum_expired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WithdrawalRequestStatusEnum>
    _$withdrawalRequestStatusEnumValues =
    BuiltSet<WithdrawalRequestStatusEnum>(const <WithdrawalRequestStatusEnum>[
  _$withdrawalRequestStatusEnum_pending,
  _$withdrawalRequestStatusEnum_confirmed,
  _$withdrawalRequestStatusEnum_cancelled,
  _$withdrawalRequestStatusEnum_expired,
]);

Serializer<WithdrawalRequestStatusEnum>
    _$withdrawalRequestStatusEnumSerializer =
    _$WithdrawalRequestStatusEnumSerializer();

class _$WithdrawalRequestStatusEnumSerializer
    implements PrimitiveSerializer<WithdrawalRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'cancelled': 'cancelled',
    'expired': 'expired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'cancelled': 'cancelled',
    'expired': 'expired',
  };

  @override
  final Iterable<Type> types = const <Type>[WithdrawalRequestStatusEnum];
  @override
  final String wireName = 'WithdrawalRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, WithdrawalRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WithdrawalRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WithdrawalRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WithdrawalRequest extends WithdrawalRequest {
  @override
  final String id;
  @override
  final WithdrawalRequestStatusEnum status;
  @override
  final DateTime expiresAt;

  factory _$WithdrawalRequest(
          [void Function(WithdrawalRequestBuilder)? updates]) =>
      (WithdrawalRequestBuilder()..update(updates))._build();

  _$WithdrawalRequest._(
      {required this.id, required this.status, required this.expiresAt})
      : super._();
  @override
  WithdrawalRequest rebuild(void Function(WithdrawalRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WithdrawalRequestBuilder toBuilder() =>
      WithdrawalRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WithdrawalRequest &&
        id == other.id &&
        status == other.status &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WithdrawalRequest')
          ..add('id', id)
          ..add('status', status)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class WithdrawalRequestBuilder
    implements Builder<WithdrawalRequest, WithdrawalRequestBuilder> {
  _$WithdrawalRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  WithdrawalRequestStatusEnum? _status;
  WithdrawalRequestStatusEnum? get status => _$this._status;
  set status(WithdrawalRequestStatusEnum? status) => _$this._status = status;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  WithdrawalRequestBuilder() {
    WithdrawalRequest._defaults(this);
  }

  WithdrawalRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WithdrawalRequest other) {
    _$v = other as _$WithdrawalRequest;
  }

  @override
  void update(void Function(WithdrawalRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WithdrawalRequest build() => _build();

  _$WithdrawalRequest _build() {
    final _$result = _$v ??
        _$WithdrawalRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'WithdrawalRequest', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'WithdrawalRequest', 'status'),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt, r'WithdrawalRequest', 'expiresAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
