//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patient_card.g.dart';

/// PatientCard
///
/// Properties:
/// * [id] 
/// * [patientId] 
/// * [displayName] 
/// * [group] 
/// * [lastCheckInAt] 
/// * [openAlert] 
@BuiltValue()
abstract class PatientCard implements Built<PatientCard, PatientCardBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'patientId')
  String get patientId;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'group')
  PatientCardGroupEnum get group;
  // enum groupEnum {  needs_attention,  check_in_when_you_can,  progressing_well,  no_recent_activity,  };

  @BuiltValueField(wireName: r'lastCheckInAt')
  DateTime get lastCheckInAt;

  @BuiltValueField(wireName: r'openAlert')
  bool? get openAlert;

  PatientCard._();

  factory PatientCard([void updates(PatientCardBuilder b)]) = _$PatientCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatientCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatientCard> get serializer => _$PatientCardSerializer();
}

class _$PatientCardSerializer implements PrimitiveSerializer<PatientCard> {
  @override
  final Iterable<Type> types = const [PatientCard, _$PatientCard];

  @override
  final String wireName = r'PatientCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatientCard object, {
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
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    yield r'group';
    yield serializers.serialize(
      object.group,
      specifiedType: const FullType(PatientCardGroupEnum),
    );
    yield r'lastCheckInAt';
    yield serializers.serialize(
      object.lastCheckInAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.openAlert != null) {
      yield r'openAlert';
      yield serializers.serialize(
        object.openAlert,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatientCard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatientCardBuilder result,
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
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatientCardGroupEnum),
          ) as PatientCardGroupEnum;
          result.group = valueDes;
          break;
        case r'lastCheckInAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastCheckInAt = valueDes;
          break;
        case r'openAlert':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.openAlert = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatientCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatientCardBuilder();
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

class PatientCardGroupEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'needs_attention')
  static const PatientCardGroupEnum needsAttention = _$patientCardGroupEnum_needsAttention;
  @BuiltValueEnumConst(wireName: r'check_in_when_you_can')
  static const PatientCardGroupEnum checkInWhenYouCan = _$patientCardGroupEnum_checkInWhenYouCan;
  @BuiltValueEnumConst(wireName: r'progressing_well')
  static const PatientCardGroupEnum progressingWell = _$patientCardGroupEnum_progressingWell;
  @BuiltValueEnumConst(wireName: r'no_recent_activity')
  static const PatientCardGroupEnum noRecentActivity = _$patientCardGroupEnum_noRecentActivity;

  static Serializer<PatientCardGroupEnum> get serializer => _$patientCardGroupEnumSerializer;

  const PatientCardGroupEnum._(String name): super(name);

  static BuiltSet<PatientCardGroupEnum> get values => _$patientCardGroupEnumValues;
  static PatientCardGroupEnum valueOf(String name) => _$patientCardGroupEnumValueOf(name);
}

