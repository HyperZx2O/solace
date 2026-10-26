//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consent_item.g.dart';

class ConsentItem extends EnumClass {

  @BuiltValueEnumConst(wireName: r'mood_task_data')
  static const ConsentItem moodTaskData = _$moodTaskData;
  @BuiltValueEnumConst(wireName: r'journal_storage')
  static const ConsentItem journalStorage = _$journalStorage;
  @BuiltValueEnumConst(wireName: r'journal_ai_analysis')
  static const ConsentItem journalAiAnalysis = _$journalAiAnalysis;
  @BuiltValueEnumConst(wireName: r'crisis_detection')
  static const ConsentItem crisisDetection = _$crisisDetection;
  @BuiltValueEnumConst(wireName: r'tier3_therapist_alert')
  static const ConsentItem tier3TherapistAlert = _$tier3TherapistAlert;
  @BuiltValueEnumConst(wireName: r'therapist_data_sharing')
  static const ConsentItem therapistDataSharing = _$therapistDataSharing;

  static Serializer<ConsentItem> get serializer => _$consentItemSerializer;

  const ConsentItem._(String name): super(name);

  static BuiltSet<ConsentItem> get values => _$values;
  static ConsentItem valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ConsentItemMixin = Object with _$ConsentItemMixin;

