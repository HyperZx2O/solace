//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/notification_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_preference.g.dart';

/// NotificationPreference
///
/// Properties:
/// * [type] 
/// * [enabled] 
/// * [disableable] - False for crisis types, which cannot be turned off (R-NOTIF-4)
@BuiltValue()
abstract class NotificationPreference implements Built<NotificationPreference, NotificationPreferenceBuilder> {
  @BuiltValueField(wireName: r'type')
  NotificationType get type;
  // enum typeEnum {  crisis_alert,  daily_checkin,  task_reminder,  inactivity,  connection_update,  };

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// False for crisis types, which cannot be turned off (R-NOTIF-4)
  @BuiltValueField(wireName: r'disableable')
  bool get disableable;

  NotificationPreference._();

  factory NotificationPreference([void updates(NotificationPreferenceBuilder b)]) = _$NotificationPreference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPreferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPreference> get serializer => _$NotificationPreferenceSerializer();
}

class _$NotificationPreferenceSerializer implements PrimitiveSerializer<NotificationPreference> {
  @override
  final Iterable<Type> types = const [NotificationPreference, _$NotificationPreference];

  @override
  final String wireName = r'NotificationPreference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPreference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NotificationType),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'disableable';
    yield serializers.serialize(
      object.disableable,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationPreference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationPreferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationType),
          ) as NotificationType;
          result.type = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'disableable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disableable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationPreference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPreferenceBuilder();
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

