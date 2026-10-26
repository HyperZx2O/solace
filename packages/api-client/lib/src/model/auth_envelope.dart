//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/auth_tokens.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_envelope.g.dart';

/// AuthEnvelope
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class AuthEnvelope implements SuccessEnvelope, Built<AuthEnvelope, AuthEnvelopeBuilder> {
  AuthEnvelope._();

  factory AuthEnvelope([void updates(AuthEnvelopeBuilder b)]) = _$AuthEnvelope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthEnvelopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthEnvelope> get serializer => _$AuthEnvelopeSerializer();
}

class _$AuthEnvelopeSerializer implements PrimitiveSerializer<AuthEnvelope> {
  @override
  final Iterable<Type> types = const [AuthEnvelope, _$AuthEnvelope];

  @override
  final String wireName = r'AuthEnvelope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthEnvelope object, {
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
    AuthEnvelope object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthEnvelopeBuilder result,
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
  AuthEnvelope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthEnvelopeBuilder();
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

class AuthEnvelopeSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const AuthEnvelopeSuccessEnum true_ = _$authEnvelopeSuccessEnum_true_;

  static Serializer<AuthEnvelopeSuccessEnum> get serializer => _$authEnvelopeSuccessEnumSerializer;

  const AuthEnvelopeSuccessEnum._(String name): super(name);

  static BuiltSet<AuthEnvelopeSuccessEnum> get values => _$authEnvelopeSuccessEnumValues;
  static AuthEnvelopeSuccessEnum valueOf(String name) => _$authEnvelopeSuccessEnumValueOf(name);
}

