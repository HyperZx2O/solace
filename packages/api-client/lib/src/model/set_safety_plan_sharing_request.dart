//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_safety_plan_sharing_request.g.dart';

/// SetSafetyPlanSharingRequest
///
/// Properties:
/// * [sharedWithTherapist] 
@BuiltValue()
abstract class SetSafetyPlanSharingRequest implements Built<SetSafetyPlanSharingRequest, SetSafetyPlanSharingRequestBuilder> {
  @BuiltValueField(wireName: r'sharedWithTherapist')
  bool get sharedWithTherapist;

  SetSafetyPlanSharingRequest._();

  factory SetSafetyPlanSharingRequest([void updates(SetSafetyPlanSharingRequestBuilder b)]) = _$SetSafetyPlanSharingRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetSafetyPlanSharingRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetSafetyPlanSharingRequest> get serializer => _$SetSafetyPlanSharingRequestSerializer();
}

class _$SetSafetyPlanSharingRequestSerializer implements PrimitiveSerializer<SetSafetyPlanSharingRequest> {
  @override
  final Iterable<Type> types = const [SetSafetyPlanSharingRequest, _$SetSafetyPlanSharingRequest];

  @override
  final String wireName = r'SetSafetyPlanSharingRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetSafetyPlanSharingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sharedWithTherapist';
    yield serializers.serialize(
      object.sharedWithTherapist,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetSafetyPlanSharingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetSafetyPlanSharingRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sharedWithTherapist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sharedWithTherapist = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetSafetyPlanSharingRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetSafetyPlanSharingRequestBuilder();
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

