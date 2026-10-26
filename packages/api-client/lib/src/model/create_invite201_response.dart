//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:between_api/src/model/invite_summary.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_invite201_response.g.dart';

/// CreateInvite201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class CreateInvite201Response implements SuccessEnvelope, Built<CreateInvite201Response, CreateInvite201ResponseBuilder> {
  CreateInvite201Response._();

  factory CreateInvite201Response([void updates(CreateInvite201ResponseBuilder b)]) = _$CreateInvite201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInvite201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInvite201Response> get serializer => _$CreateInvite201ResponseSerializer();
}

class _$CreateInvite201ResponseSerializer implements PrimitiveSerializer<CreateInvite201Response> {
  @override
  final Iterable<Type> types = const [CreateInvite201Response, _$CreateInvite201Response];

  @override
  final String wireName = r'CreateInvite201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInvite201Response object, {
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
    CreateInvite201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateInvite201ResponseBuilder result,
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
  CreateInvite201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInvite201ResponseBuilder();
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

class CreateInvite201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const CreateInvite201ResponseSuccessEnum true_ = _$createInvite201ResponseSuccessEnum_true_;

  static Serializer<CreateInvite201ResponseSuccessEnum> get serializer => _$createInvite201ResponseSuccessEnumSerializer;

  const CreateInvite201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<CreateInvite201ResponseSuccessEnum> get values => _$createInvite201ResponseSuccessEnumValues;
  static CreateInvite201ResponseSuccessEnum valueOf(String name) => _$createInvite201ResponseSuccessEnumValueOf(name);
}

