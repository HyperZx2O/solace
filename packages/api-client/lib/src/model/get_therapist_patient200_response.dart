//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/patient_detail.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_therapist_patient200_response.g.dart';

/// GetTherapistPatient200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetTherapistPatient200Response implements SuccessEnvelope, Built<GetTherapistPatient200Response, GetTherapistPatient200ResponseBuilder> {
  GetTherapistPatient200Response._();

  factory GetTherapistPatient200Response([void updates(GetTherapistPatient200ResponseBuilder b)]) = _$GetTherapistPatient200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTherapistPatient200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTherapistPatient200Response> get serializer => _$GetTherapistPatient200ResponseSerializer();
}

class _$GetTherapistPatient200ResponseSerializer implements PrimitiveSerializer<GetTherapistPatient200Response> {
  @override
  final Iterable<Type> types = const [GetTherapistPatient200Response, _$GetTherapistPatient200Response];

  @override
  final String wireName = r'GetTherapistPatient200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTherapistPatient200Response object, {
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
    GetTherapistPatient200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTherapistPatient200ResponseBuilder result,
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
  GetTherapistPatient200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTherapistPatient200ResponseBuilder();
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

class GetTherapistPatient200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetTherapistPatient200ResponseSuccessEnum true_ = _$getTherapistPatient200ResponseSuccessEnum_true_;

  static Serializer<GetTherapistPatient200ResponseSuccessEnum> get serializer => _$getTherapistPatient200ResponseSuccessEnumSerializer;

  const GetTherapistPatient200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetTherapistPatient200ResponseSuccessEnum> get values => _$getTherapistPatient200ResponseSuccessEnumValues;
  static GetTherapistPatient200ResponseSuccessEnum valueOf(String name) => _$getTherapistPatient200ResponseSuccessEnumValueOf(name);
}

