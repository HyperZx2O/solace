//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/safety_plan.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_safety_plan200_response.g.dart';

/// GetSafetyPlan200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetSafetyPlan200Response implements SuccessEnvelope, Built<GetSafetyPlan200Response, GetSafetyPlan200ResponseBuilder> {
  GetSafetyPlan200Response._();

  factory GetSafetyPlan200Response([void updates(GetSafetyPlan200ResponseBuilder b)]) = _$GetSafetyPlan200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSafetyPlan200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSafetyPlan200Response> get serializer => _$GetSafetyPlan200ResponseSerializer();
}

class _$GetSafetyPlan200ResponseSerializer implements PrimitiveSerializer<GetSafetyPlan200Response> {
  @override
  final Iterable<Type> types = const [GetSafetyPlan200Response, _$GetSafetyPlan200Response];

  @override
  final String wireName = r'GetSafetyPlan200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSafetyPlan200Response object, {
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
    GetSafetyPlan200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSafetyPlan200ResponseBuilder result,
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
  GetSafetyPlan200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSafetyPlan200ResponseBuilder();
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

class GetSafetyPlan200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetSafetyPlan200ResponseSuccessEnum true_ = _$getSafetyPlan200ResponseSuccessEnum_true_;

  static Serializer<GetSafetyPlan200ResponseSuccessEnum> get serializer => _$getSafetyPlan200ResponseSuccessEnumSerializer;

  const GetSafetyPlan200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetSafetyPlan200ResponseSuccessEnum> get values => _$getSafetyPlan200ResponseSuccessEnumValues;
  static GetSafetyPlan200ResponseSuccessEnum valueOf(String name) => _$getSafetyPlan200ResponseSuccessEnumValueOf(name);
}

