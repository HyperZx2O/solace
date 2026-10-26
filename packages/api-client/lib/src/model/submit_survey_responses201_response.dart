//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:between_api/src/model/survey_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_survey_responses201_response.g.dart';

/// SubmitSurveyResponses201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class SubmitSurveyResponses201Response implements SuccessEnvelope, Built<SubmitSurveyResponses201Response, SubmitSurveyResponses201ResponseBuilder> {
  SubmitSurveyResponses201Response._();

  factory SubmitSurveyResponses201Response([void updates(SubmitSurveyResponses201ResponseBuilder b)]) = _$SubmitSurveyResponses201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitSurveyResponses201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitSurveyResponses201Response> get serializer => _$SubmitSurveyResponses201ResponseSerializer();
}

class _$SubmitSurveyResponses201ResponseSerializer implements PrimitiveSerializer<SubmitSurveyResponses201Response> {
  @override
  final Iterable<Type> types = const [SubmitSurveyResponses201Response, _$SubmitSurveyResponses201Response];

  @override
  final String wireName = r'SubmitSurveyResponses201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitSurveyResponses201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'error';
    yield object.error == null ? null : serializers.serialize(
      object.error,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(SuccessEnvelopeSuccessEnum),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmitSurveyResponses201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubmitSurveyResponses201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SuccessEnvelopeSuccessEnum),
          ) as SuccessEnvelopeSuccessEnum;
          result.success = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmitSurveyResponses201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitSurveyResponses201ResponseBuilder();
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

class SubmitSurveyResponses201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const SubmitSurveyResponses201ResponseSuccessEnum true_ = _$submitSurveyResponses201ResponseSuccessEnum_true_;

  static Serializer<SubmitSurveyResponses201ResponseSuccessEnum> get serializer => _$submitSurveyResponses201ResponseSuccessEnumSerializer;

  const SubmitSurveyResponses201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<SubmitSurveyResponses201ResponseSuccessEnum> get values => _$submitSurveyResponses201ResponseSuccessEnumValues;
  static SubmitSurveyResponses201ResponseSuccessEnum valueOf(String name) => _$submitSurveyResponses201ResponseSuccessEnumValueOf(name);
}

