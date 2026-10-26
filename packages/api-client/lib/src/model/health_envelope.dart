//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/health_envelope_all_of_data.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_envelope.g.dart';

/// HealthEnvelope
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class HealthEnvelope implements SuccessEnvelope, Built<HealthEnvelope, HealthEnvelopeBuilder> {
  HealthEnvelope._();

  factory HealthEnvelope([void updates(HealthEnvelopeBuilder b)]) = _$HealthEnvelope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthEnvelopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthEnvelope> get serializer => _$HealthEnvelopeSerializer();
}

class _$HealthEnvelopeSerializer implements PrimitiveSerializer<HealthEnvelope> {
  @override
  final Iterable<Type> types = const [HealthEnvelope, _$HealthEnvelope];

  @override
  final String wireName = r'HealthEnvelope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthEnvelope object, {
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
    HealthEnvelope object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthEnvelopeBuilder result,
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
  HealthEnvelope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthEnvelopeBuilder();
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

class HealthEnvelopeSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const HealthEnvelopeSuccessEnum true_ = _$healthEnvelopeSuccessEnum_true_;

  static Serializer<HealthEnvelopeSuccessEnum> get serializer => _$healthEnvelopeSuccessEnumSerializer;

  const HealthEnvelopeSuccessEnum._(String name): super(name);

  static BuiltSet<HealthEnvelopeSuccessEnum> get values => _$healthEnvelopeSuccessEnumValues;
  static HealthEnvelopeSuccessEnum valueOf(String name) => _$healthEnvelopeSuccessEnumValueOf(name);
}

