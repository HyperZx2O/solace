//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:solace_api/src/model/therapist_alert.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_therapist_alert200_response.g.dart';

/// GetTherapistAlert200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetTherapistAlert200Response implements SuccessEnvelope, Built<GetTherapistAlert200Response, GetTherapistAlert200ResponseBuilder> {
  GetTherapistAlert200Response._();

  factory GetTherapistAlert200Response([void updates(GetTherapistAlert200ResponseBuilder b)]) = _$GetTherapistAlert200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTherapistAlert200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTherapistAlert200Response> get serializer => _$GetTherapistAlert200ResponseSerializer();
}

class _$GetTherapistAlert200ResponseSerializer implements PrimitiveSerializer<GetTherapistAlert200Response> {
  @override
  final Iterable<Type> types = const [GetTherapistAlert200Response, _$GetTherapistAlert200Response];

  @override
  final String wireName = r'GetTherapistAlert200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTherapistAlert200Response object, {
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
    GetTherapistAlert200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTherapistAlert200ResponseBuilder result,
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
  GetTherapistAlert200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTherapistAlert200ResponseBuilder();
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

class GetTherapistAlert200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetTherapistAlert200ResponseSuccessEnum true_ = _$getTherapistAlert200ResponseSuccessEnum_true_;

  static Serializer<GetTherapistAlert200ResponseSuccessEnum> get serializer => _$getTherapistAlert200ResponseSuccessEnumSerializer;

  const GetTherapistAlert200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetTherapistAlert200ResponseSuccessEnum> get values => _$getTherapistAlert200ResponseSuccessEnumValues;
  static GetTherapistAlert200ResponseSuccessEnum valueOf(String name) => _$getTherapistAlert200ResponseSuccessEnumValueOf(name);
}

