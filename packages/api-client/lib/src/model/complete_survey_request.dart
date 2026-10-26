//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_survey_request.g.dart';

/// CompleteSurveyRequest
///
/// Properties:
/// * [responseId] 
@BuiltValue()
abstract class CompleteSurveyRequest implements Built<CompleteSurveyRequest, CompleteSurveyRequestBuilder> {
  @BuiltValueField(wireName: r'responseId')
  String get responseId;

  CompleteSurveyRequest._();

  factory CompleteSurveyRequest([void updates(CompleteSurveyRequestBuilder b)]) = _$CompleteSurveyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompleteSurveyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompleteSurveyRequest> get serializer => _$CompleteSurveyRequestSerializer();
}

class _$CompleteSurveyRequestSerializer implements PrimitiveSerializer<CompleteSurveyRequest> {
  @override
  final Iterable<Type> types = const [CompleteSurveyRequest, _$CompleteSurveyRequest];

  @override
  final String wireName = r'CompleteSurveyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompleteSurveyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'responseId';
    yield serializers.serialize(
      object.responseId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CompleteSurveyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompleteSurveyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'responseId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CompleteSurveyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompleteSurveyRequestBuilder();
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

