//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'approve_stage_change_request.g.dart';

/// ApproveStageChangeRequest
///
/// Properties:
/// * [approved] 
@BuiltValue()
abstract class ApproveStageChangeRequest implements Built<ApproveStageChangeRequest, ApproveStageChangeRequestBuilder> {
  @BuiltValueField(wireName: r'approved')
  bool get approved;

  ApproveStageChangeRequest._();

  factory ApproveStageChangeRequest([void updates(ApproveStageChangeRequestBuilder b)]) = _$ApproveStageChangeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApproveStageChangeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApproveStageChangeRequest> get serializer => _$ApproveStageChangeRequestSerializer();
}

class _$ApproveStageChangeRequestSerializer implements PrimitiveSerializer<ApproveStageChangeRequest> {
  @override
  final Iterable<Type> types = const [ApproveStageChangeRequest, _$ApproveStageChangeRequest];

  @override
  final String wireName = r'ApproveStageChangeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApproveStageChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'approved';
    yield serializers.serialize(
      object.approved,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApproveStageChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApproveStageChangeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'approved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.approved = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApproveStageChangeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApproveStageChangeRequestBuilder();
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

