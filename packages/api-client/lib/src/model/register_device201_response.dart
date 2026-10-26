//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/device_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_device201_response.g.dart';

/// RegisterDevice201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class RegisterDevice201Response implements SuccessEnvelope, Built<RegisterDevice201Response, RegisterDevice201ResponseBuilder> {
  RegisterDevice201Response._();

  factory RegisterDevice201Response([void updates(RegisterDevice201ResponseBuilder b)]) = _$RegisterDevice201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegisterDevice201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegisterDevice201Response> get serializer => _$RegisterDevice201ResponseSerializer();
}

class _$RegisterDevice201ResponseSerializer implements PrimitiveSerializer<RegisterDevice201Response> {
  @override
  final Iterable<Type> types = const [RegisterDevice201Response, _$RegisterDevice201Response];

  @override
  final String wireName = r'RegisterDevice201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegisterDevice201Response object, {
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
    RegisterDevice201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegisterDevice201ResponseBuilder result,
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
  RegisterDevice201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterDevice201ResponseBuilder();
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

class RegisterDevice201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const RegisterDevice201ResponseSuccessEnum true_ = _$registerDevice201ResponseSuccessEnum_true_;

  static Serializer<RegisterDevice201ResponseSuccessEnum> get serializer => _$registerDevice201ResponseSuccessEnumSerializer;

  const RegisterDevice201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<RegisterDevice201ResponseSuccessEnum> get values => _$registerDevice201ResponseSuccessEnumValues;
  static RegisterDevice201ResponseSuccessEnum valueOf(String name) => _$registerDevice201ResponseSuccessEnumValueOf(name);
}

