//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:solace_api/src/model/check_in.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_check_in201_response.g.dart';

/// CreateCheckIn201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class CreateCheckIn201Response implements SuccessEnvelope, Built<CreateCheckIn201Response, CreateCheckIn201ResponseBuilder> {
  CreateCheckIn201Response._();

  factory CreateCheckIn201Response([void updates(CreateCheckIn201ResponseBuilder b)]) = _$CreateCheckIn201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCheckIn201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCheckIn201Response> get serializer => _$CreateCheckIn201ResponseSerializer();
}

class _$CreateCheckIn201ResponseSerializer implements PrimitiveSerializer<CreateCheckIn201Response> {
  @override
  final Iterable<Type> types = const [CreateCheckIn201Response, _$CreateCheckIn201Response];

  @override
  final String wireName = r'CreateCheckIn201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCheckIn201Response object, {
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
    CreateCheckIn201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCheckIn201ResponseBuilder result,
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
  CreateCheckIn201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCheckIn201ResponseBuilder();
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

class CreateCheckIn201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const CreateCheckIn201ResponseSuccessEnum true_ = _$createCheckIn201ResponseSuccessEnum_true_;

  static Serializer<CreateCheckIn201ResponseSuccessEnum> get serializer => _$createCheckIn201ResponseSuccessEnumSerializer;

  const CreateCheckIn201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<CreateCheckIn201ResponseSuccessEnum> get values => _$createCheckIn201ResponseSuccessEnumValues;
  static CreateCheckIn201ResponseSuccessEnum valueOf(String name) => _$createCheckIn201ResponseSuccessEnumValueOf(name);
}

