//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_assignment.g.dart';

/// TaskAssignment
///
/// Properties:
/// * [id] 
/// * [taskKey] 
/// * [title] 
/// * [assignedFor] 
/// * [completedAt] 
/// * [swapReason] 
@BuiltValue()
abstract class TaskAssignment implements Built<TaskAssignment, TaskAssignmentBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'taskKey')
  String get taskKey;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'assignedFor')
  Date get assignedFor;

  @BuiltValueField(wireName: r'completedAt')
  DateTime get completedAt;

  @BuiltValueField(wireName: r'swapReason')
  String? get swapReason;

  TaskAssignment._();

  factory TaskAssignment([void updates(TaskAssignmentBuilder b)]) = _$TaskAssignment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskAssignmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskAssignment> get serializer => _$TaskAssignmentSerializer();
}

class _$TaskAssignmentSerializer implements PrimitiveSerializer<TaskAssignment> {
  @override
  final Iterable<Type> types = const [TaskAssignment, _$TaskAssignment];

  @override
  final String wireName = r'TaskAssignment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskAssignment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'taskKey';
    yield serializers.serialize(
      object.taskKey,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'assignedFor';
    yield serializers.serialize(
      object.assignedFor,
      specifiedType: const FullType(Date),
    );
    yield r'completedAt';
    yield serializers.serialize(
      object.completedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.swapReason != null) {
      yield r'swapReason';
      yield serializers.serialize(
        object.swapReason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskAssignment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskAssignmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'taskKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.taskKey = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'assignedFor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.assignedFor = valueDes;
          break;
        case r'completedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.completedAt = valueDes;
          break;
        case r'swapReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.swapReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskAssignment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskAssignmentBuilder();
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

