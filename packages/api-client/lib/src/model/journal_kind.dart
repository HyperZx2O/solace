//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'journal_kind.g.dart';

class JournalKind extends EnumClass {

  @BuiltValueEnumConst(wireName: r'recovery')
  static const JournalKind recovery = _$recovery;
  @BuiltValueEnumConst(wireName: r'personal')
  static const JournalKind personal = _$personal;

  static Serializer<JournalKind> get serializer => _$journalKindSerializer;

  const JournalKind._(String name): super(name);

  static BuiltSet<JournalKind> get values => _$values;
  static JournalKind valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class JournalKindMixin = Object with _$JournalKindMixin;

