//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:between_api/src/model/crisis_alert_summary.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer_tier2_consent200_response.g.dart';

/// AnswerTier2Consent200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class AnswerTier2Consent200Response implements SuccessEnvelope, Built<AnswerTier2Consent200Response, AnswerTier2Consent200ResponseBuilder> {
  AnswerTier2Consent200Response._();

  factory AnswerTier2Consent200Response([void updates(AnswerTier2Consent200ResponseBuilder b)]) = _$AnswerTier2Consent200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnswerTier2Consent200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnswerTier2Consent200Response> get serializer => _$AnswerTier2Consent200ResponseSerializer();
}

class _$AnswerTier2Consent200ResponseSerializer implements PrimitiveSerializer<AnswerTier2Consent200Response> {
  @override
  final Iterable<Type> types = const [AnswerTier2Consent200Response, _$AnswerTier2Consent200Response];

  @override
  final String wireName = r'AnswerTier2Consent200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnswerTier2Consent200Response object, {
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
    AnswerTier2Consent200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnswerTier2Consent200ResponseBuilder result,
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
  AnswerTier2Consent200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnswerTier2Consent200ResponseBuilder();
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

class AnswerTier2Consent200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const AnswerTier2Consent200ResponseSuccessEnum true_ = _$answerTier2Consent200ResponseSuccessEnum_true_;

  static Serializer<AnswerTier2Consent200ResponseSuccessEnum> get serializer => _$answerTier2Consent200ResponseSuccessEnumSerializer;

  const AnswerTier2Consent200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<AnswerTier2Consent200ResponseSuccessEnum> get values => _$answerTier2Consent200ResponseSuccessEnumValues;
  static AnswerTier2Consent200ResponseSuccessEnum valueOf(String name) => _$answerTier2Consent200ResponseSuccessEnumValueOf(name);
}

