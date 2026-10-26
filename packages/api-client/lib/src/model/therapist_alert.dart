//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/crisis_tier.dart';
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/alert_state.dart';
import 'package:between_api/src/model/therapist_alert_history_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'therapist_alert.g.dart';

/// TherapistAlert
///
/// Properties:
/// * [id] 
/// * [patientId] 
/// * [state] 
/// * [tier] 
/// * [escalatedExternal] 
/// * [createdAt] 
/// * [elapsedSeconds] 
/// * [reviewedAt] 
/// * [undoDeadline] 
/// * [checklist] 
/// * [history] 
@BuiltValue()
abstract class TherapistAlert implements Built<TherapistAlert, TherapistAlertBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'patientId')
  String get patientId;

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

  @BuiltValueField(wireName: r'reviewedAt')
  DateTime? get reviewedAt;

  @BuiltValueField(wireName: r'undoDeadline')
  DateTime? get undoDeadline;

  @BuiltValueField(wireName: r'checklist')
  BuiltMap<String, bool> get checklist;

  @BuiltValueField(wireName: r'history')
  BuiltList<TherapistAlertHistoryInner>? get history;

  TherapistAlert._();

  factory TherapistAlert([void updates(TherapistAlertBuilder b)]) = _$TherapistAlert;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TherapistAlertBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TherapistAlert> get serializer => _$TherapistAlertSerializer();
}

class _$TherapistAlertSerializer implements PrimitiveSerializer<TherapistAlert> {
  @override
  final Iterable<Type> types = const [TherapistAlert, _$TherapistAlert];

  @override
  final String wireName = r'TherapistAlert';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TherapistAlert object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'patientId';
    yield serializers.serialize(
      object.patientId,
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
    if (object.reviewedAt != null) {
      yield r'reviewedAt';
      yield serializers.serialize(
        object.reviewedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.undoDeadline != null) {
      yield r'undoDeadline';
      yield serializers.serialize(
        object.undoDeadline,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'checklist';
    yield serializers.serialize(
      object.checklist,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(bool)]),
    );
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType: const FullType(BuiltList, [FullType(TherapistAlertHistoryInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TherapistAlert object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TherapistAlertBuilder result,
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
        case r'patientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.patientId = valueDes;
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
        case r'reviewedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.reviewedAt = valueDes;
          break;
        case r'undoDeadline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.undoDeadline = valueDes;
          break;
        case r'checklist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(bool)]),
          ) as BuiltMap<String, bool>;
          result.checklist.replace(valueDes);
          break;
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TherapistAlertHistoryInner)]),
          ) as BuiltList<TherapistAlertHistoryInner>;
          result.history.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TherapistAlert deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TherapistAlertBuilder();
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

