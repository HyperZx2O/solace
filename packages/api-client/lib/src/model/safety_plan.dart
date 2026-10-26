//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'safety_plan.g.dart';

/// SafetyPlan
///
/// Properties:
/// * [field1] 
/// * [field2] 
/// * [field3] 
/// * [field4] 
/// * [field5] 
/// * [sharedWithTherapist] 
/// * [updatedAt] 
@BuiltValue()
abstract class SafetyPlan implements Built<SafetyPlan, SafetyPlanBuilder> {
  @BuiltValueField(wireName: r'field1')
  String? get field1;

  @BuiltValueField(wireName: r'field2')
  String? get field2;

  @BuiltValueField(wireName: r'field3')
  String? get field3;

  @BuiltValueField(wireName: r'field4')
  String? get field4;

  @BuiltValueField(wireName: r'field5')
  String? get field5;

  @BuiltValueField(wireName: r'sharedWithTherapist')
  bool get sharedWithTherapist;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  SafetyPlan._();

  factory SafetyPlan([void updates(SafetyPlanBuilder b)]) = _$SafetyPlan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SafetyPlanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SafetyPlan> get serializer => _$SafetyPlanSerializer();
}

class _$SafetyPlanSerializer implements PrimitiveSerializer<SafetyPlan> {
  @override
  final Iterable<Type> types = const [SafetyPlan, _$SafetyPlan];

  @override
  final String wireName = r'SafetyPlan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SafetyPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.field1 != null) {
      yield r'field1';
      yield serializers.serialize(
        object.field1,
        specifiedType: const FullType(String),
      );
    }
    if (object.field2 != null) {
      yield r'field2';
      yield serializers.serialize(
        object.field2,
        specifiedType: const FullType(String),
      );
    }
    if (object.field3 != null) {
      yield r'field3';
      yield serializers.serialize(
        object.field3,
        specifiedType: const FullType(String),
      );
    }
    if (object.field4 != null) {
      yield r'field4';
      yield serializers.serialize(
        object.field4,
        specifiedType: const FullType(String),
      );
    }
    if (object.field5 != null) {
      yield r'field5';
      yield serializers.serialize(
        object.field5,
        specifiedType: const FullType(String),
      );
    }
    yield r'sharedWithTherapist';
    yield serializers.serialize(
      object.sharedWithTherapist,
      specifiedType: const FullType(bool),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SafetyPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SafetyPlanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field1 = valueDes;
          break;
        case r'field2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field2 = valueDes;
          break;
        case r'field3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field3 = valueDes;
          break;
        case r'field4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field4 = valueDes;
          break;
        case r'field5':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field5 = valueDes;
          break;
        case r'sharedWithTherapist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sharedWithTherapist = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SafetyPlan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SafetyPlanBuilder();
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

