//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/task_explanation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'explain_task200_response.g.dart';

/// ExplainTask200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class ExplainTask200Response implements SuccessEnvelope, Built<ExplainTask200Response, ExplainTask200ResponseBuilder> {
  ExplainTask200Response._();

  factory ExplainTask200Response([void updates(ExplainTask200ResponseBuilder b)]) = _$ExplainTask200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExplainTask200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExplainTask200Response> get serializer => _$ExplainTask200ResponseSerializer();
}

class _$ExplainTask200ResponseSerializer implements PrimitiveSerializer<ExplainTask200Response> {
  @override
  final Iterable<Type> types = const [ExplainTask200Response, _$ExplainTask200Response];

  @override
  final String wireName = r'ExplainTask200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExplainTask200Response object, {
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
    ExplainTask200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExplainTask200ResponseBuilder result,
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
  ExplainTask200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExplainTask200ResponseBuilder();
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

class ExplainTask200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const ExplainTask200ResponseSuccessEnum true_ = _$explainTask200ResponseSuccessEnum_true_;

  static Serializer<ExplainTask200ResponseSuccessEnum> get serializer => _$explainTask200ResponseSuccessEnumSerializer;

  const ExplainTask200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<ExplainTask200ResponseSuccessEnum> get values => _$explainTask200ResponseSuccessEnumValues;
  static ExplainTask200ResponseSuccessEnum valueOf(String name) => _$explainTask200ResponseSuccessEnumValueOf(name);
}

