//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/connection_summary.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'accept_invite200_response.g.dart';

/// AcceptInvite200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class AcceptInvite200Response implements SuccessEnvelope, Built<AcceptInvite200Response, AcceptInvite200ResponseBuilder> {
  AcceptInvite200Response._();

  factory AcceptInvite200Response([void updates(AcceptInvite200ResponseBuilder b)]) = _$AcceptInvite200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AcceptInvite200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AcceptInvite200Response> get serializer => _$AcceptInvite200ResponseSerializer();
}

class _$AcceptInvite200ResponseSerializer implements PrimitiveSerializer<AcceptInvite200Response> {
  @override
  final Iterable<Type> types = const [AcceptInvite200Response, _$AcceptInvite200Response];

  @override
  final String wireName = r'AcceptInvite200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AcceptInvite200Response object, {
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
    AcceptInvite200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AcceptInvite200ResponseBuilder result,
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
  AcceptInvite200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptInvite200ResponseBuilder();
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

class AcceptInvite200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const AcceptInvite200ResponseSuccessEnum true_ = _$acceptInvite200ResponseSuccessEnum_true_;

  static Serializer<AcceptInvite200ResponseSuccessEnum> get serializer => _$acceptInvite200ResponseSuccessEnumSerializer;

  const AcceptInvite200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<AcceptInvite200ResponseSuccessEnum> get values => _$acceptInvite200ResponseSuccessEnumValues;
  static AcceptInvite200ResponseSuccessEnum valueOf(String name) => _$acceptInvite200ResponseSuccessEnumValueOf(name);
}

