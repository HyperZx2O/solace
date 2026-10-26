//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_notification_preference_request.g.dart';

/// SetNotificationPreferenceRequest
///
/// Properties:
/// * [enabled] 
@BuiltValue()
abstract class SetNotificationPreferenceRequest implements Built<SetNotificationPreferenceRequest, SetNotificationPreferenceRequestBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  SetNotificationPreferenceRequest._();

  factory SetNotificationPreferenceRequest([void updates(SetNotificationPreferenceRequestBuilder b)]) = _$SetNotificationPreferenceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetNotificationPreferenceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetNotificationPreferenceRequest> get serializer => _$SetNotificationPreferenceRequestSerializer();
}

class _$SetNotificationPreferenceRequestSerializer implements PrimitiveSerializer<SetNotificationPreferenceRequest> {
  @override
  final Iterable<Type> types = const [SetNotificationPreferenceRequest, _$SetNotificationPreferenceRequest];

  @override
  final String wireName = r'SetNotificationPreferenceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetNotificationPreferenceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetNotificationPreferenceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetNotificationPreferenceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetNotificationPreferenceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetNotificationPreferenceRequestBuilder();
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

