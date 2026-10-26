// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Role _$patient = const Role._('patient');
const Role _$therapist = const Role._('therapist');
const Role _$safetyTeam = const Role._('safetyTeam');

Role _$valueOf(String name) {
  switch (name) {
    case 'patient':
      return _$patient;
    case 'therapist':
      return _$therapist;
    case 'safetyTeam':
      return _$safetyTeam;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Role> _$values = BuiltSet<Role>(const <Role>[
  _$patient,
  _$therapist,
  _$safetyTeam,
]);

class _$RoleMeta {
  const _$RoleMeta();
  Role get patient => _$patient;
  Role get therapist => _$therapist;
  Role get safetyTeam => _$safetyTeam;
  Role valueOf(String name) => _$valueOf(name);
  BuiltSet<Role> get values => _$values;
}

abstract class _$RoleMixin {
  // ignore: non_constant_identifier_names
  _$RoleMeta get Role => const _$RoleMeta();
}

Serializer<Role> _$roleSerializer = _$RoleSerializer();

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'patient': 'patient',
    'therapist': 'therapist',
    'safetyTeam': 'safety_team',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'patient': 'patient',
    'therapist': 'therapist',
    'safety_team': 'safetyTeam',
  };

  @override
  final Iterable<Type> types = const <Type>[Role];
  @override
  final String wireName = 'Role';

  @override
  Object serialize(Serializers serializers, Role object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Role deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Role.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
