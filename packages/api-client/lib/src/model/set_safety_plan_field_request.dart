//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_safety_plan_field_request.g.dart';

/// SetSafetyPlanFieldRequest
///
/// Properties:
/// * [text] 
@BuiltValue()
abstract class SetSafetyPlanFieldRequest implements Built<SetSafetyPlanFieldRequest, SetSafetyPlanFieldRequestBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  SetSafetyPlanFieldRequest._();

  factory SetSafetyPlanFieldRequest([void updates(SetSafetyPlanFieldRequestBuilder b)]) = _$SetSafetyPlanFieldRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetSafetyPlanFieldRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetSafetyPlanFieldRequest> get serializer => _$SetSafetyPlanFieldRequestSerializer();
}

class _$SetSafetyPlanFieldRequestSerializer implements PrimitiveSerializer<SetSafetyPlanFieldRequest> {
  @override
  final Iterable<Type> types = const [SetSafetyPlanFieldRequest, _$SetSafetyPlanFieldRequest];

  @override
  final String wireName = r'SetSafetyPlanFieldRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetSafetyPlanFieldRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetSafetyPlanFieldRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetSafetyPlanFieldRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetSafetyPlanFieldRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetSafetyPlanFieldRequestBuilder();
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

