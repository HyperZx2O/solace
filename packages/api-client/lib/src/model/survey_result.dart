//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_result.g.dart';

/// SurveyResult
///
/// Properties:
/// * [id] 
/// * [surveyId] 
/// * [totalScore] 
/// * [scores] 
/// * [possibleConcern] - True only for PHQ-9 item 9 (OD-10). Not a Tier 3 alert.
/// * [createdAt] 
@BuiltValue()
abstract class SurveyResult implements Built<SurveyResult, SurveyResultBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'surveyId')
  String get surveyId;

  @BuiltValueField(wireName: r'totalScore')
  int get totalScore;

  @BuiltValueField(wireName: r'scores')
  BuiltMap<String, int> get scores;

  /// True only for PHQ-9 item 9 (OD-10). Not a Tier 3 alert.
  @BuiltValueField(wireName: r'possibleConcern')
  bool? get possibleConcern;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  SurveyResult._();

  factory SurveyResult([void updates(SurveyResultBuilder b)]) = _$SurveyResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyResult> get serializer => _$SurveyResultSerializer();
}

class _$SurveyResultSerializer implements PrimitiveSerializer<SurveyResult> {
  @override
  final Iterable<Type> types = const [SurveyResult, _$SurveyResult];

  @override
  final String wireName = r'SurveyResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'surveyId';
    yield serializers.serialize(
      object.surveyId,
      specifiedType: const FullType(String),
    );
    yield r'totalScore';
    yield serializers.serialize(
      object.totalScore,
      specifiedType: const FullType(int),
    );
    yield r'scores';
    yield serializers.serialize(
      object.scores,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
    );
    if (object.possibleConcern != null) {
      yield r'possibleConcern';
      yield serializers.serialize(
        object.possibleConcern,
        specifiedType: const FullType(bool),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurveyResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'surveyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surveyId = valueDes;
          break;
        case r'totalScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalScore = valueDes;
          break;
        case r'scores':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.scores.replace(valueDes);
          break;
        case r'possibleConcern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.possibleConcern = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SurveyResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyResultBuilder();
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

