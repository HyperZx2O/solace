//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/resolve_alert_request_checklist.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resolve_alert_request.g.dart';

/// ResolveAlertRequest
///
/// Properties:
/// * [checklist] 
@BuiltValue()
abstract class ResolveAlertRequest implements Built<ResolveAlertRequest, ResolveAlertRequestBuilder> {
  @BuiltValueField(wireName: r'checklist')
  ResolveAlertRequestChecklist get checklist;

  ResolveAlertRequest._();

  factory ResolveAlertRequest([void updates(ResolveAlertRequestBuilder b)]) = _$ResolveAlertRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResolveAlertRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResolveAlertRequest> get serializer => _$ResolveAlertRequestSerializer();
}

class _$ResolveAlertRequestSerializer implements PrimitiveSerializer<ResolveAlertRequest> {
  @override
  final Iterable<Type> types = const [ResolveAlertRequest, _$ResolveAlertRequest];

  @override
  final String wireName = r'ResolveAlertRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResolveAlertRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'checklist';
    yield serializers.serialize(
      object.checklist,
      specifiedType: const FullType(ResolveAlertRequestChecklist),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResolveAlertRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResolveAlertRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'checklist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResolveAlertRequestChecklist),
          ) as ResolveAlertRequestChecklist;
          result.checklist.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResolveAlertRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResolveAlertRequestBuilder();
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

