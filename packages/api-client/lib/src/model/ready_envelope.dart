//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:between_api/src/model/ready_envelope_all_of_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ready_envelope.g.dart';

/// ReadyEnvelope
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class ReadyEnvelope implements SuccessEnvelope, Built<ReadyEnvelope, ReadyEnvelopeBuilder> {
  ReadyEnvelope._();

  factory ReadyEnvelope([void updates(ReadyEnvelopeBuilder b)]) = _$ReadyEnvelope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadyEnvelopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadyEnvelope> get serializer => _$ReadyEnvelopeSerializer();
}

class _$ReadyEnvelopeSerializer implements PrimitiveSerializer<ReadyEnvelope> {
  @override
  final Iterable<Type> types = const [ReadyEnvelope, _$ReadyEnvelope];

  @override
  final String wireName = r'ReadyEnvelope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadyEnvelope object, {
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
    ReadyEnvelope object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadyEnvelopeBuilder result,
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
  ReadyEnvelope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadyEnvelopeBuilder();
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

class ReadyEnvelopeSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const ReadyEnvelopeSuccessEnum true_ = _$readyEnvelopeSuccessEnum_true_;

  static Serializer<ReadyEnvelopeSuccessEnum> get serializer => _$readyEnvelopeSuccessEnumSerializer;

  const ReadyEnvelopeSuccessEnum._(String name): super(name);

  static BuiltSet<ReadyEnvelopeSuccessEnum> get values => _$readyEnvelopeSuccessEnumValues;
  static ReadyEnvelopeSuccessEnum valueOf(String name) => _$readyEnvelopeSuccessEnumValueOf(name);
}

