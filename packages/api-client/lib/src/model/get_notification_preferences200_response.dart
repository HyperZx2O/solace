//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/notification_preference.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_notification_preferences200_response.g.dart';

/// GetNotificationPreferences200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetNotificationPreferences200Response implements SuccessEnvelope, Built<GetNotificationPreferences200Response, GetNotificationPreferences200ResponseBuilder> {
  GetNotificationPreferences200Response._();

  factory GetNotificationPreferences200Response([void updates(GetNotificationPreferences200ResponseBuilder b)]) = _$GetNotificationPreferences200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetNotificationPreferences200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetNotificationPreferences200Response> get serializer => _$GetNotificationPreferences200ResponseSerializer();
}

class _$GetNotificationPreferences200ResponseSerializer implements PrimitiveSerializer<GetNotificationPreferences200Response> {
  @override
  final Iterable<Type> types = const [GetNotificationPreferences200Response, _$GetNotificationPreferences200Response];

  @override
  final String wireName = r'GetNotificationPreferences200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetNotificationPreferences200Response object, {
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
    GetNotificationPreferences200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetNotificationPreferences200ResponseBuilder result,
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
  GetNotificationPreferences200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNotificationPreferences200ResponseBuilder();
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

class GetNotificationPreferences200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetNotificationPreferences200ResponseSuccessEnum true_ = _$getNotificationPreferences200ResponseSuccessEnum_true_;

  static Serializer<GetNotificationPreferences200ResponseSuccessEnum> get serializer => _$getNotificationPreferences200ResponseSuccessEnumSerializer;

  const GetNotificationPreferences200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetNotificationPreferences200ResponseSuccessEnum> get values => _$getNotificationPreferences200ResponseSuccessEnumValues;
  static GetNotificationPreferences200ResponseSuccessEnum valueOf(String name) => _$getNotificationPreferences200ResponseSuccessEnumValueOf(name);
}

