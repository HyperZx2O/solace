//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/alert_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'therapist_alert_history_inner.g.dart';

/// TherapistAlertHistoryInner
///
/// Properties:
/// * [fromState] 
/// * [toState] 
/// * [actor] 
/// * [at] 
@BuiltValue()
abstract class TherapistAlertHistoryInner implements Built<TherapistAlertHistoryInner, TherapistAlertHistoryInnerBuilder> {
  @BuiltValueField(wireName: r'fromState')
  AlertState? get fromState;
  // enum fromStateEnum {  detected,  dispatched,  delivered,  acknowledged,  patient_contacted,  resolved,  closed,  };

  @BuiltValueField(wireName: r'toState')
  AlertState? get toState;
  // enum toStateEnum {  detected,  dispatched,  delivered,  acknowledged,  patient_contacted,  resolved,  closed,  };

  @BuiltValueField(wireName: r'actor')
  String? get actor;

  @BuiltValueField(wireName: r'at')
  DateTime? get at;

  TherapistAlertHistoryInner._();

  factory TherapistAlertHistoryInner([void updates(TherapistAlertHistoryInnerBuilder b)]) = _$TherapistAlertHistoryInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TherapistAlertHistoryInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TherapistAlertHistoryInner> get serializer => _$TherapistAlertHistoryInnerSerializer();
}

class _$TherapistAlertHistoryInnerSerializer implements PrimitiveSerializer<TherapistAlertHistoryInner> {
  @override
  final Iterable<Type> types = const [TherapistAlertHistoryInner, _$TherapistAlertHistoryInner];

  @override
  final String wireName = r'TherapistAlertHistoryInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TherapistAlertHistoryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fromState != null) {
      yield r'fromState';
      yield serializers.serialize(
        object.fromState,
        specifiedType: const FullType(AlertState),
      );
    }
    if (object.toState != null) {
      yield r'toState';
      yield serializers.serialize(
        object.toState,
        specifiedType: const FullType(AlertState),
      );
    }
    if (object.actor != null) {
      yield r'actor';
      yield serializers.serialize(
        object.actor,
        specifiedType: const FullType(String),
      );
    }
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TherapistAlertHistoryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TherapistAlertHistoryInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlertState),
          ) as AlertState;
          result.fromState = valueDes;
          break;
        case r'toState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlertState),
          ) as AlertState;
          result.toState = valueDes;
          break;
        case r'actor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.actor = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TherapistAlertHistoryInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TherapistAlertHistoryInnerBuilder();
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

