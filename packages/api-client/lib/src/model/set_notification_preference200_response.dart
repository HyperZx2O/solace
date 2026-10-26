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

part 'set_notification_preference200_response.g.dart';

/// SetNotificationPreference200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class SetNotificationPreference200Response implements SuccessEnvelope, Built<SetNotificationPreference200Response, SetNotificationPreference200ResponseBuilder> {
  SetNotificationPreference200Response._();

  factory SetNotificationPreference200Response([void updates(SetNotificationPreference200ResponseBuilder b)]) = _$SetNotificationPreference200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetNotificationPreference200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetNotificationPreference200Response> get serializer => _$SetNotificationPreference200ResponseSerializer();
}

class _$SetNotificationPreference200ResponseSerializer implements PrimitiveSerializer<SetNotificationPreference200Response> {
  @override
  final Iterable<Type> types = const [SetNotificationPreference200Response, _$SetNotificationPreference200Response];

  @override
  final String wireName = r'SetNotificationPreference200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetNotificationPreference200Response object, {
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
    SetNotificationPreference200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetNotificationPreference200ResponseBuilder result,
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
  SetNotificationPreference200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetNotificationPreference200ResponseBuilder();
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

class SetNotificationPreference200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const SetNotificationPreference200ResponseSuccessEnum true_ = _$setNotificationPreference200ResponseSuccessEnum_true_;

  static Serializer<SetNotificationPreference200ResponseSuccessEnum> get serializer => _$setNotificationPreference200ResponseSuccessEnumSerializer;

  const SetNotificationPreference200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<SetNotificationPreference200ResponseSuccessEnum> get values => _$setNotificationPreference200ResponseSuccessEnumValues;
  static SetNotificationPreference200ResponseSuccessEnum valueOf(String name) => _$setNotificationPreference200ResponseSuccessEnumValueOf(name);
}

