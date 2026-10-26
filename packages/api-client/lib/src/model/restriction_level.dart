//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restriction_level.g.dart';

class RestrictionLevel extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const RestrictionLevel none = _$none;
  @BuiltValueEnumConst(wireName: r'level1')
  static const RestrictionLevel level1 = _$level1;
  @BuiltValueEnumConst(wireName: r'level2')
  static const RestrictionLevel level2 = _$level2;
  @BuiltValueEnumConst(wireName: r'level3')
  static const RestrictionLevel level3 = _$level3;

  static Serializer<RestrictionLevel> get serializer => _$restrictionLevelSerializer;

  const RestrictionLevel._(String name): super(name);

  static BuiltSet<RestrictionLevel> get values => _$values;
  static RestrictionLevel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RestrictionLevelMixin = Object with _$RestrictionLevelMixin;

