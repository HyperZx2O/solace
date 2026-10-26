//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_explanation.g.dart';

/// TaskExplanation
///
/// Properties:
/// * [taskKey] 
/// * [reason] 
@BuiltValue()
abstract class TaskExplanation implements Built<TaskExplanation, TaskExplanationBuilder> {
  @BuiltValueField(wireName: r'taskKey')
  String get taskKey;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  TaskExplanation._();

  factory TaskExplanation([void updates(TaskExplanationBuilder b)]) = _$TaskExplanation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskExplanationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskExplanation> get serializer => _$TaskExplanationSerializer();
}

class _$TaskExplanationSerializer implements PrimitiveSerializer<TaskExplanation> {
  @override
  final Iterable<Type> types = const [TaskExplanation, _$TaskExplanation];

  @override
  final String wireName = r'TaskExplanation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskExplanation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'taskKey';
    yield serializers.serialize(
      object.taskKey,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskExplanation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskExplanationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'taskKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.taskKey = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskExplanation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskExplanationBuilder();
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

