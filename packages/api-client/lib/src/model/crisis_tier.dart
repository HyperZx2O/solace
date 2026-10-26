//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'crisis_tier.g.dart';

class CrisisTier extends EnumClass {

  @BuiltValueEnumConst(wireName: r'tier1')
  static const CrisisTier tier1 = _$tier1;
  @BuiltValueEnumConst(wireName: r'tier2')
  static const CrisisTier tier2 = _$tier2;
  @BuiltValueEnumConst(wireName: r'tier3')
  static const CrisisTier tier3 = _$tier3;
  @BuiltValueEnumConst(wireName: r'possible_concern')
  static const CrisisTier possibleConcern = _$possibleConcern;

  static Serializer<CrisisTier> get serializer => _$crisisTierSerializer;

  const CrisisTier._(String name): super(name);

  static BuiltSet<CrisisTier> get values => _$values;
  static CrisisTier valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CrisisTierMixin = Object with _$CrisisTierMixin;

