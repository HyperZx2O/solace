//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resolve_alert_request_checklist.g.dart';

/// ResolveAlertRequestChecklist
///
/// Properties:
/// * [patientContacted] 
/// * [safetyAssessed] 
/// * [planAgreed] 
@BuiltValue()
abstract class ResolveAlertRequestChecklist implements Built<ResolveAlertRequestChecklist, ResolveAlertRequestChecklistBuilder> {
  @BuiltValueField(wireName: r'patientContacted')
  bool get patientContacted;

  @BuiltValueField(wireName: r'safetyAssessed')
  bool get safetyAssessed;

  @BuiltValueField(wireName: r'planAgreed')
  bool get planAgreed;

  ResolveAlertRequestChecklist._();

  factory ResolveAlertRequestChecklist([void updates(ResolveAlertRequestChecklistBuilder b)]) = _$ResolveAlertRequestChecklist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResolveAlertRequestChecklistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResolveAlertRequestChecklist> get serializer => _$ResolveAlertRequestChecklistSerializer();
}

class _$ResolveAlertRequestChecklistSerializer implements PrimitiveSerializer<ResolveAlertRequestChecklist> {
  @override
  final Iterable<Type> types = const [ResolveAlertRequestChecklist, _$ResolveAlertRequestChecklist];

  @override
  final String wireName = r'ResolveAlertRequestChecklist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResolveAlertRequestChecklist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'patientContacted';
    yield serializers.serialize(
      object.patientContacted,
      specifiedType: const FullType(bool),
    );
    yield r'safetyAssessed';
    yield serializers.serialize(
      object.safetyAssessed,
      specifiedType: const FullType(bool),
    );
    yield r'planAgreed';
    yield serializers.serialize(
      object.planAgreed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResolveAlertRequestChecklist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResolveAlertRequestChecklistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'patientContacted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.patientContacted = valueDes;
          break;
        case r'safetyAssessed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.safetyAssessed = valueDes;
          break;
        case r'planAgreed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.planAgreed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResolveAlertRequestChecklist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResolveAlertRequestChecklistBuilder();
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

