//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/resource.dart';
import 'package:between_api/src/model/crisis_tier.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'crisis_decision.g.dart';

/// CrisisDecision
///
/// Properties:
/// * [tier] 
/// * [showCrisisScreen] 
/// * [alertId] 
/// * [historical] 
/// * [duplicate] 
/// * [ruleVersion] 
/// * [resources] 
@BuiltValue()
abstract class CrisisDecision implements Built<CrisisDecision, CrisisDecisionBuilder> {
  @BuiltValueField(wireName: r'tier')
  CrisisTier get tier;
  // enum tierEnum {  tier1,  tier2,  tier3,  possible_concern,  };

  @BuiltValueField(wireName: r'showCrisisScreen')
  bool get showCrisisScreen;

  @BuiltValueField(wireName: r'alertId')
  String get alertId;

  @BuiltValueField(wireName: r'historical')
  bool get historical;

  @BuiltValueField(wireName: r'duplicate')
  bool? get duplicate;

  @BuiltValueField(wireName: r'ruleVersion')
  String? get ruleVersion;

  @BuiltValueField(wireName: r'resources')
  BuiltList<Resource>? get resources;

  CrisisDecision._();

  factory CrisisDecision([void updates(CrisisDecisionBuilder b)]) = _$CrisisDecision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CrisisDecisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CrisisDecision> get serializer => _$CrisisDecisionSerializer();
}

class _$CrisisDecisionSerializer implements PrimitiveSerializer<CrisisDecision> {
  @override
  final Iterable<Type> types = const [CrisisDecision, _$CrisisDecision];

  @override
  final String wireName = r'CrisisDecision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CrisisDecision object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tier';
    yield serializers.serialize(
      object.tier,
      specifiedType: const FullType(CrisisTier),
    );
    yield r'showCrisisScreen';
    yield serializers.serialize(
      object.showCrisisScreen,
      specifiedType: const FullType(bool),
    );
    yield r'alertId';
    yield serializers.serialize(
      object.alertId,
      specifiedType: const FullType(String),
    );
    yield r'historical';
    yield serializers.serialize(
      object.historical,
      specifiedType: const FullType(bool),
    );
    if (object.duplicate != null) {
      yield r'duplicate';
      yield serializers.serialize(
        object.duplicate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ruleVersion != null) {
      yield r'ruleVersion';
      yield serializers.serialize(
        object.ruleVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.resources != null) {
      yield r'resources';
      yield serializers.serialize(
        object.resources,
        specifiedType: const FullType(BuiltList, [FullType(Resource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CrisisDecision object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CrisisDecisionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CrisisTier),
          ) as CrisisTier;
          result.tier = valueDes;
          break;
        case r'showCrisisScreen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCrisisScreen = valueDes;
          break;
        case r'alertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alertId = valueDes;
          break;
        case r'historical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.historical = valueDes;
          break;
        case r'duplicate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.duplicate = valueDes;
          break;
        case r'ruleVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleVersion = valueDes;
          break;
        case r'resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Resource)]),
          ) as BuiltList<Resource>;
          result.resources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CrisisDecision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CrisisDecisionBuilder();
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

