//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/survey_result.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_survey200_response.g.dart';

/// CompleteSurvey200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class CompleteSurvey200Response implements SuccessEnvelope, Built<CompleteSurvey200Response, CompleteSurvey200ResponseBuilder> {
  CompleteSurvey200Response._();

  factory CompleteSurvey200Response([void updates(CompleteSurvey200ResponseBuilder b)]) = _$CompleteSurvey200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompleteSurvey200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompleteSurvey200Response> get serializer => _$CompleteSurvey200ResponseSerializer();
}

class _$CompleteSurvey200ResponseSerializer implements PrimitiveSerializer<CompleteSurvey200Response> {
  @override
  final Iterable<Type> types = const [CompleteSurvey200Response, _$CompleteSurvey200Response];

  @override
  final String wireName = r'CompleteSurvey200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompleteSurvey200Response object, {
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
    CompleteSurvey200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompleteSurvey200ResponseBuilder result,
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
  CompleteSurvey200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompleteSurvey200ResponseBuilder();
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

class CompleteSurvey200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const CompleteSurvey200ResponseSuccessEnum true_ = _$completeSurvey200ResponseSuccessEnum_true_;

  static Serializer<CompleteSurvey200ResponseSuccessEnum> get serializer => _$completeSurvey200ResponseSuccessEnumSerializer;

  const CompleteSurvey200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<CompleteSurvey200ResponseSuccessEnum> get values => _$completeSurvey200ResponseSuccessEnumValues;
  static CompleteSurvey200ResponseSuccessEnum valueOf(String name) => _$completeSurvey200ResponseSuccessEnumValueOf(name);
}

