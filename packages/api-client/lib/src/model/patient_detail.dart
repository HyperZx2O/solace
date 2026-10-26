//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/patient_detail_mood_series_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patient_detail.g.dart';

/// PatientDetail
///
/// Properties:
/// * [patientId] 
/// * [displayName] 
/// * [connectedSince] 
/// * [moodSeries] 
/// * [taskCompletionRate] 
/// * [journalSentiment] 
@BuiltValue()
abstract class PatientDetail implements Built<PatientDetail, PatientDetailBuilder> {
  @BuiltValueField(wireName: r'patientId')
  String get patientId;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'connectedSince')
  DateTime get connectedSince;

  @BuiltValueField(wireName: r'moodSeries')
  BuiltList<PatientDetailMoodSeriesInner>? get moodSeries;

  @BuiltValueField(wireName: r'taskCompletionRate')
  num? get taskCompletionRate;

  @BuiltValueField(wireName: r'journalSentiment')
  PatientDetailJournalSentimentEnum? get journalSentiment;
  // enum journalSentimentEnum {  positive,  neutral,  negative,  crisis,  };

  PatientDetail._();

  factory PatientDetail([void updates(PatientDetailBuilder b)]) = _$PatientDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatientDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatientDetail> get serializer => _$PatientDetailSerializer();
}

class _$PatientDetailSerializer implements PrimitiveSerializer<PatientDetail> {
  @override
  final Iterable<Type> types = const [PatientDetail, _$PatientDetail];

  @override
  final String wireName = r'PatientDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatientDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'patientId';
    yield serializers.serialize(
      object.patientId,
      specifiedType: const FullType(String),
    );
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'connectedSince';
    yield serializers.serialize(
      object.connectedSince,
      specifiedType: const FullType(DateTime),
    );
    if (object.moodSeries != null) {
      yield r'moodSeries';
      yield serializers.serialize(
        object.moodSeries,
        specifiedType: const FullType(BuiltList, [FullType(PatientDetailMoodSeriesInner)]),
      );
    }
    if (object.taskCompletionRate != null) {
      yield r'taskCompletionRate';
      yield serializers.serialize(
        object.taskCompletionRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.journalSentiment != null) {
      yield r'journalSentiment';
      yield serializers.serialize(
        object.journalSentiment,
        specifiedType: const FullType(PatientDetailJournalSentimentEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatientDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatientDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'patientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.patientId = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'connectedSince':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.connectedSince = valueDes;
          break;
        case r'moodSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PatientDetailMoodSeriesInner)]),
          ) as BuiltList<PatientDetailMoodSeriesInner>;
          result.moodSeries.replace(valueDes);
          break;
        case r'taskCompletionRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taskCompletionRate = valueDes;
          break;
        case r'journalSentiment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatientDetailJournalSentimentEnum),
          ) as PatientDetailJournalSentimentEnum;
          result.journalSentiment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatientDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatientDetailBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class PatientDetailJournalSentimentEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'positive')
  static const PatientDetailJournalSentimentEnum positive = _$patientDetailJournalSentimentEnum_positive;
  @BuiltValueEnumConst(wireName: r'neutral')
  static const PatientDetailJournalSentimentEnum neutral = _$patientDetailJournalSentimentEnum_neutral;
  @BuiltValueEnumConst(wireName: r'negative')
  static const PatientDetailJournalSentimentEnum negative = _$patientDetailJournalSentimentEnum_negative;
  @BuiltValueEnumConst(wireName: r'crisis')
  static const PatientDetailJournalSentimentEnum crisis = _$patientDetailJournalSentimentEnum_crisis;

  static Serializer<PatientDetailJournalSentimentEnum> get serializer => _$patientDetailJournalSentimentEnumSerializer;

  const PatientDetailJournalSentimentEnum._(String name): super(name);

  static BuiltSet<PatientDetailJournalSentimentEnum> get values => _$patientDetailJournalSentimentEnumValues;
  static PatientDetailJournalSentimentEnum valueOf(String name) => _$patientDetailJournalSentimentEnumValueOf(name);
}

