//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:solace_api/src/model/task_assignment.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_task200_response.g.dart';

/// CompleteTask200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class CompleteTask200Response implements SuccessEnvelope, Built<CompleteTask200Response, CompleteTask200ResponseBuilder> {
  CompleteTask200Response._();

  factory CompleteTask200Response([void updates(CompleteTask200ResponseBuilder b)]) = _$CompleteTask200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompleteTask200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompleteTask200Response> get serializer => _$CompleteTask200ResponseSerializer();
}

class _$CompleteTask200ResponseSerializer implements PrimitiveSerializer<CompleteTask200Response> {
  @override
  final Iterable<Type> types = const [CompleteTask200Response, _$CompleteTask200Response];

  @override
  final String wireName = r'CompleteTask200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompleteTask200Response object, {
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
    CompleteTask200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompleteTask200ResponseBuilder result,
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
  CompleteTask200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompleteTask200ResponseBuilder();
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

class CompleteTask200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const CompleteTask200ResponseSuccessEnum true_ = _$completeTask200ResponseSuccessEnum_true_;

  static Serializer<CompleteTask200ResponseSuccessEnum> get serializer => _$completeTask200ResponseSuccessEnumSerializer;

  const CompleteTask200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<CompleteTask200ResponseSuccessEnum> get values => _$completeTask200ResponseSuccessEnumValues;
  static CompleteTask200ResponseSuccessEnum valueOf(String name) => _$completeTask200ResponseSuccessEnumValueOf(name);
}

