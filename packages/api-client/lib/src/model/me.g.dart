// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MeStatusEnum _$meStatusEnum_active = const MeStatusEnum._('active');
const MeStatusEnum _$meStatusEnum_suspended = const MeStatusEnum._('suspended');
const MeStatusEnum _$meStatusEnum_deletionPending =
    const MeStatusEnum._('deletionPending');
const MeStatusEnum _$meStatusEnum_deleted = const MeStatusEnum._('deleted');

MeStatusEnum _$meStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$meStatusEnum_active;
    case 'suspended':
      return _$meStatusEnum_suspended;
    case 'deletionPending':
      return _$meStatusEnum_deletionPending;
    case 'deleted':
      return _$meStatusEnum_deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MeStatusEnum> _$meStatusEnumValues =
    BuiltSet<MeStatusEnum>(const <MeStatusEnum>[
  _$meStatusEnum_active,
  _$meStatusEnum_suspended,
  _$meStatusEnum_deletionPending,
  _$meStatusEnum_deleted,
]);

Serializer<MeStatusEnum> _$meStatusEnumSerializer = _$MeStatusEnumSerializer();

class _$MeStatusEnumSerializer implements PrimitiveSerializer<MeStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'suspended': 'suspended',
    'deletionPending': 'deletion_pending',
    'deleted': 'deleted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'suspended': 'suspended',
    'deletion_pending': 'deletionPending',
    'deleted': 'deleted',
  };

  @override
  final Iterable<Type> types = const <Type>[MeStatusEnum];
  @override
  final String wireName = 'MeStatusEnum';

  @override
  Object serialize(Serializers serializers, MeStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MeStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MeStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Me extends Me {
  @override
  final String id;
  @override
  final Role role;
  @override
  final MeStatusEnum status;
  @override
  final DateTime createdAt;

  factory _$Me([void Function(MeBuilder)? updates]) =>
      (MeBuilder()..update(updates))._build();

  _$Me._(
      {required this.id,
      required this.role,
      required this.status,
      required this.createdAt})
      : super._();
  @override
  Me rebuild(void Function(MeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeBuilder toBuilder() => MeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Me &&
        id == other.id &&
        role == other.role &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Me')
          ..add('id', id)
          ..add('role', role)
          ..add('status', status)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class MeBuilder implements Builder<Me, MeBuilder> {
  _$Me? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Role? _role;
  Role? get role => _$this._role;
  set role(Role? role) => _$this._role = role;

  MeStatusEnum? _status;
  MeStatusEnum? get status => _$this._status;
  set status(MeStatusEnum? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  MeBuilder() {
    Me._defaults(this);
  }

  MeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _role = $v.role;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Me other) {
    _$v = other as _$Me;
  }

  @override
  void update(void Function(MeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Me build() => _build();

  _$Me _build() {
    final _$result = _$v ??
        _$Me._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Me', 'id'),
          role: BuiltValueNullFieldError.checkNotNull(role, r'Me', 'role'),
          status:
              BuiltValueNullFieldError.checkNotNull(status, r'Me', 'status'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Me', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
