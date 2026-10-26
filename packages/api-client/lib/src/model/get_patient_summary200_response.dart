//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/patient_summary.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_patient_summary200_response.g.dart';

/// GetPatientSummary200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetPatientSummary200Response implements SuccessEnvelope, Built<GetPatientSummary200Response, GetPatientSummary200ResponseBuilder> {
  GetPatientSummary200Response._();

  factory GetPatientSummary200Response([void updates(GetPatientSummary200ResponseBuilder b)]) = _$GetPatientSummary200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPatientSummary200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPatientSummary200Response> get serializer => _$GetPatientSummary200ResponseSerializer();
}

class _$GetPatientSummary200ResponseSerializer implements PrimitiveSerializer<GetPatientSummary200Response> {
  @override
  final Iterable<Type> types = const [GetPatientSummary200Response, _$GetPatientSummary200Response];

  @override
  final String wireName = r'GetPatientSummary200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPatientSummary200Response object, {
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
    GetPatientSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetPatientSummary200ResponseBuilder result,
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
  GetPatientSummary200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPatientSummary200ResponseBuilder();
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

class GetPatientSummary200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetPatientSummary200ResponseSuccessEnum true_ = _$getPatientSummary200ResponseSuccessEnum_true_;

  static Serializer<GetPatientSummary200ResponseSuccessEnum> get serializer => _$getPatientSummary200ResponseSuccessEnumSerializer;

  const GetPatientSummary200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetPatientSummary200ResponseSuccessEnum> get values => _$getPatientSummary200ResponseSuccessEnumValues;
  static GetPatientSummary200ResponseSuccessEnum valueOf(String name) => _$getPatientSummary200ResponseSuccessEnumValueOf(name);
}

