// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsentItem _$moodTaskData = const ConsentItem._('moodTaskData');
const ConsentItem _$journalStorage = const ConsentItem._('journalStorage');
const ConsentItem _$journalAiAnalysis =
    const ConsentItem._('journalAiAnalysis');
const ConsentItem _$crisisDetection = const ConsentItem._('crisisDetection');
const ConsentItem _$tier3TherapistAlert =
    const ConsentItem._('tier3TherapistAlert');
const ConsentItem _$therapistDataSharing =
    const ConsentItem._('therapistDataSharing');

ConsentItem _$valueOf(String name) {
  switch (name) {
    case 'moodTaskData':
      return _$moodTaskData;
    case 'journalStorage':
      return _$journalStorage;
    case 'journalAiAnalysis':
      return _$journalAiAnalysis;
    case 'crisisDetection':
      return _$crisisDetection;
    case 'tier3TherapistAlert':
      return _$tier3TherapistAlert;
    case 'therapistDataSharing':
      return _$therapistDataSharing;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsentItem> _$values =
    BuiltSet<ConsentItem>(const <ConsentItem>[
  _$moodTaskData,
  _$journalStorage,
  _$journalAiAnalysis,
  _$crisisDetection,
  _$tier3TherapistAlert,
  _$therapistDataSharing,
]);

class _$ConsentItemMeta {
  const _$ConsentItemMeta();
  ConsentItem get moodTaskData => _$moodTaskData;
  ConsentItem get journalStorage => _$journalStorage;
  ConsentItem get journalAiAnalysis => _$journalAiAnalysis;
  ConsentItem get crisisDetection => _$crisisDetection;
  ConsentItem get tier3TherapistAlert => _$tier3TherapistAlert;
  ConsentItem get therapistDataSharing => _$therapistDataSharing;
  ConsentItem valueOf(String name) => _$valueOf(name);
  BuiltSet<ConsentItem> get values => _$values;
}

abstract class _$ConsentItemMixin {
  // ignore: non_constant_identifier_names
  _$ConsentItemMeta get ConsentItem => const _$ConsentItemMeta();
}

Serializer<ConsentItem> _$consentItemSerializer = _$ConsentItemSerializer();

class _$ConsentItemSerializer implements PrimitiveSerializer<ConsentItem> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'moodTaskData': 'mood_task_data',
    'journalStorage': 'journal_storage',
    'journalAiAnalysis': 'journal_ai_analysis',
    'crisisDetection': 'crisis_detection',
    'tier3TherapistAlert': 'tier3_therapist_alert',
    'therapistDataSharing': 'therapist_data_sharing',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mood_task_data': 'moodTaskData',
    'journal_storage': 'journalStorage',
    'journal_ai_analysis': 'journalAiAnalysis',
    'crisis_detection': 'crisisDetection',
    'tier3_therapist_alert': 'tier3TherapistAlert',
    'therapist_data_sharing': 'therapistDataSharing',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsentItem];
  @override
  final String wireName = 'ConsentItem';

  @override
  Object serialize(Serializers serializers, ConsentItem object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsentItem deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsentItem.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
