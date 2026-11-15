//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/crisis_tier.dart';
import 'package:solace_api/src/model/alert_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'crisis_alert_summary.g.dart';

/// CrisisAlertSummary
///
/// Properties:
/// * [id] 
/// * [state] 
/// * [tier] 
/// * [escalatedExternal] 
/// * [createdAt] 
/// * [elapsedSeconds] 
@BuiltValue()
abstract class CrisisAlertSummary implements Built<CrisisAlertSummary, CrisisAlertSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'state')
  AlertState get state;
  // enum stateEnum {  detected,  dispatched,  delivered,  acknowledged,  patient_contacted,  resolved,  closed,  };

  @BuiltValueField(wireName: r'tier')
  CrisisTier get tier;
  // enum tierEnum {  tier1,  tier2,  tier3,  possible_concern,  };

  @BuiltValueField(wireName: r'escalatedExternal')
  bool? get escalatedExternal;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'elapsedSeconds')
  int get elapsedSeconds;

  CrisisAlertSummary._();

  factory CrisisAlertSummary([void updates(CrisisAlertSummaryBuilder b)]) = _$CrisisAlertSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CrisisAlertSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CrisisAlertSummary> get serializer => _$CrisisAlertSummarySerializer();
}

class _$CrisisAlertSummarySerializer implements PrimitiveSerializer<CrisisAlertSummary> {
  @override
  final Iterable<Type> types = const [CrisisAlertSummary, _$CrisisAlertSummary];

  @override
  final String wireName = r'CrisisAlertSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CrisisAlertSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(AlertState),
    );
    yield r'tier';
    yield serializers.serialize(
      object.tier,
      specifiedType: const FullType(CrisisTier),
    );
    if (object.escalatedExternal != null) {
      yield r'escalatedExternal';
      yield serializers.serialize(
        object.escalatedExternal,
        specifiedType: const FullType(bool),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'elapsedSeconds';
    yield serializers.serialize(
      object.elapsedSeconds,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CrisisAlertSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CrisisAlertSummaryBuilder result,
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
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlertState),
          ) as AlertState;
          result.state = valueDes;
          break;
        case r'tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CrisisTier),
          ) as CrisisTier;
          result.tier = valueDes;
          break;
        case r'escalatedExternal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.escalatedExternal = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'elapsedSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.elapsedSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CrisisAlertSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CrisisAlertSummaryBuilder();
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

