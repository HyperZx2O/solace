//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retake_survey_request.g.dart';

/// RetakeSurveyRequest
///
/// Properties:
/// * [surveyKey] 
@BuiltValue()
abstract class RetakeSurveyRequest implements Built<RetakeSurveyRequest, RetakeSurveyRequestBuilder> {
  @BuiltValueField(wireName: r'surveyKey')
  String get surveyKey;

  RetakeSurveyRequest._();

  factory RetakeSurveyRequest([void updates(RetakeSurveyRequestBuilder b)]) = _$RetakeSurveyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetakeSurveyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetakeSurveyRequest> get serializer => _$RetakeSurveyRequestSerializer();
}

class _$RetakeSurveyRequestSerializer implements PrimitiveSerializer<RetakeSurveyRequest> {
  @override
  final Iterable<Type> types = const [RetakeSurveyRequest, _$RetakeSurveyRequest];

  @override
  final String wireName = r'RetakeSurveyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetakeSurveyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'surveyKey';
    yield serializers.serialize(
      object.surveyKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RetakeSurveyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RetakeSurveyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'surveyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surveyKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetakeSurveyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetakeSurveyRequestBuilder();
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

