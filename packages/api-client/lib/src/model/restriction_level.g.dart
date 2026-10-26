// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restriction_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestrictionLevel _$none = const RestrictionLevel._('none');
const RestrictionLevel _$level1 = const RestrictionLevel._('level1');
const RestrictionLevel _$level2 = const RestrictionLevel._('level2');
const RestrictionLevel _$level3 = const RestrictionLevel._('level3');

RestrictionLevel _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'level1':
      return _$level1;
    case 'level2':
      return _$level2;
    case 'level3':
      return _$level3;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RestrictionLevel> _$values =
    BuiltSet<RestrictionLevel>(const <RestrictionLevel>[
  _$none,
  _$level1,
  _$level2,
  _$level3,
]);

class _$RestrictionLevelMeta {
  const _$RestrictionLevelMeta();
  RestrictionLevel get none => _$none;
  RestrictionLevel get level1 => _$level1;
  RestrictionLevel get level2 => _$level2;
  RestrictionLevel get level3 => _$level3;
  RestrictionLevel valueOf(String name) => _$valueOf(name);
  BuiltSet<RestrictionLevel> get values => _$values;
}

abstract class _$RestrictionLevelMixin {
  // ignore: non_constant_identifier_names
  _$RestrictionLevelMeta get RestrictionLevel => const _$RestrictionLevelMeta();
}

Serializer<RestrictionLevel> _$restrictionLevelSerializer =
    _$RestrictionLevelSerializer();

class _$RestrictionLevelSerializer
    implements PrimitiveSerializer<RestrictionLevel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'level1': 'level1',
    'level2': 'level2',
    'level3': 'level3',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'level1': 'level1',
    'level2': 'level2',
    'level3': 'level3',
  };

  @override
  final Iterable<Type> types = const <Type>[RestrictionLevel];
  @override
  final String wireName = 'RestrictionLevel';

  @override
  Object serialize(Serializers serializers, RestrictionLevel object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RestrictionLevel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RestrictionLevel.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
