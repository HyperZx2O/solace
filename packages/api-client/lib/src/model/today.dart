//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/task_assignment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'today.g.dart';

/// Today
///
/// Properties:
/// * [task] 
/// * [canSwap] 
/// * [checkInDone] 
/// * [reflectionAvailable] 
@BuiltValue()
abstract class Today implements Built<Today, TodayBuilder> {
  @BuiltValueField(wireName: r'task')
  TaskAssignment get task;

  @BuiltValueField(wireName: r'canSwap')
  bool get canSwap;

  @BuiltValueField(wireName: r'checkInDone')
  bool get checkInDone;

  @BuiltValueField(wireName: r'reflectionAvailable')
  bool? get reflectionAvailable;

  Today._();

  factory Today([void updates(TodayBuilder b)]) = _$Today;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TodayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Today> get serializer => _$TodaySerializer();
}

class _$TodaySerializer implements PrimitiveSerializer<Today> {
  @override
  final Iterable<Type> types = const [Today, _$Today];

  @override
  final String wireName = r'Today';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Today object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'task';
    yield serializers.serialize(
      object.task,
      specifiedType: const FullType(TaskAssignment),
    );
    yield r'canSwap';
    yield serializers.serialize(
      object.canSwap,
      specifiedType: const FullType(bool),
    );
    yield r'checkInDone';
    yield serializers.serialize(
      object.checkInDone,
      specifiedType: const FullType(bool),
    );
    if (object.reflectionAvailable != null) {
      yield r'reflectionAvailable';
      yield serializers.serialize(
        object.reflectionAvailable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Today object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TodayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskAssignment),
          ) as TaskAssignment;
          result.task.replace(valueDes);
          break;
        case r'canSwap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canSwap = valueDes;
          break;
        case r'checkInDone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.checkInDone = valueDes;
          break;
        case r'reflectionAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.reflectionAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Today deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TodayBuilder();
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

