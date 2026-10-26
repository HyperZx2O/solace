//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'journal_privacy.g.dart';

class JournalPrivacy extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hidden_from_therapist')
  static const JournalPrivacy hiddenFromTherapist = _$hiddenFromTherapist;
  @BuiltValueEnumConst(wireName: r'progress_only')
  static const JournalPrivacy progressOnly = _$progressOnly;
  @BuiltValueEnumConst(wireName: r'full_access')
  static const JournalPrivacy fullAccess = _$fullAccess;

  static Serializer<JournalPrivacy> get serializer => _$journalPrivacySerializer;

  const JournalPrivacy._(String name): super(name);

  static BuiltSet<JournalPrivacy> get values => _$values;
  static JournalPrivacy valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class JournalPrivacyMixin = Object with _$JournalPrivacyMixin;

