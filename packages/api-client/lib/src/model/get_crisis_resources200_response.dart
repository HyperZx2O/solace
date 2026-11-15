//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_crisis_resources200_response.g.dart';

/// GetCrisisResources200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetCrisisResources200Response implements SuccessEnvelope, Built<GetCrisisResources200Response, GetCrisisResources200ResponseBuilder> {
  GetCrisisResources200Response._();

  factory GetCrisisResources200Response([void updates(GetCrisisResources200ResponseBuilder b)]) = _$GetCrisisResources200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCrisisResources200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCrisisResources200Response> get serializer => _$GetCrisisResources200ResponseSerializer();
}

class _$GetCrisisResources200ResponseSerializer implements PrimitiveSerializer<GetCrisisResources200Response> {
  @override
  final Iterable<Type> types = const [GetCrisisResources200Response, _$GetCrisisResources200Response];

  @override
  final String wireName = r'GetCrisisResources200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCrisisResources200Response object, {
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
    GetCrisisResources200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCrisisResources200ResponseBuilder result,
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
  GetCrisisResources200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCrisisResources200ResponseBuilder();
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

class GetCrisisResources200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetCrisisResources200ResponseSuccessEnum true_ = _$getCrisisResources200ResponseSuccessEnum_true_;

  static Serializer<GetCrisisResources200ResponseSuccessEnum> get serializer => _$getCrisisResources200ResponseSuccessEnumSerializer;

  const GetCrisisResources200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetCrisisResources200ResponseSuccessEnum> get values => _$getCrisisResources200ResponseSuccessEnumValues;
  static GetCrisisResources200ResponseSuccessEnum valueOf(String name) => _$getCrisisResources200ResponseSuccessEnumValueOf(name);
}

