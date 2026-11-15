//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:solace_api/src/model/survey.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_survey200_response.g.dart';

/// GetSurvey200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetSurvey200Response implements SuccessEnvelope, Built<GetSurvey200Response, GetSurvey200ResponseBuilder> {
  GetSurvey200Response._();

  factory GetSurvey200Response([void updates(GetSurvey200ResponseBuilder b)]) = _$GetSurvey200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSurvey200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSurvey200Response> get serializer => _$GetSurvey200ResponseSerializer();
}

class _$GetSurvey200ResponseSerializer implements PrimitiveSerializer<GetSurvey200Response> {
  @override
  final Iterable<Type> types = const [GetSurvey200Response, _$GetSurvey200Response];

  @override
  final String wireName = r'GetSurvey200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSurvey200Response object, {
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
    GetSurvey200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSurvey200ResponseBuilder result,
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
  GetSurvey200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSurvey200ResponseBuilder();
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

class GetSurvey200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetSurvey200ResponseSuccessEnum true_ = _$getSurvey200ResponseSuccessEnum_true_;

  static Serializer<GetSurvey200ResponseSuccessEnum> get serializer => _$getSurvey200ResponseSuccessEnumSerializer;

  const GetSurvey200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetSurvey200ResponseSuccessEnum> get values => _$getSurvey200ResponseSuccessEnumValues;
  static GetSurvey200ResponseSuccessEnum valueOf(String name) => _$getSurvey200ResponseSuccessEnumValueOf(name);
}

