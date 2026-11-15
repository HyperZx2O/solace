//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/patient_card.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_therapist_patients200_response_all_of_data.g.dart';

/// ListTherapistPatients200ResponseAllOfData
///
/// Properties:
/// * [needsAttention] 
/// * [checkInWhenYouCan] 
/// * [progressingWell] 
/// * [noRecentActivity] 
@BuiltValue()
abstract class ListTherapistPatients200ResponseAllOfData implements Built<ListTherapistPatients200ResponseAllOfData, ListTherapistPatients200ResponseAllOfDataBuilder> {
  @BuiltValueField(wireName: r'needsAttention')
  BuiltList<PatientCard>? get needsAttention;

  @BuiltValueField(wireName: r'checkInWhenYouCan')
  BuiltList<PatientCard>? get checkInWhenYouCan;

  @BuiltValueField(wireName: r'progressingWell')
  BuiltList<PatientCard>? get progressingWell;

  @BuiltValueField(wireName: r'noRecentActivity')
  BuiltList<PatientCard>? get noRecentActivity;

  ListTherapistPatients200ResponseAllOfData._();

  factory ListTherapistPatients200ResponseAllOfData([void updates(ListTherapistPatients200ResponseAllOfDataBuilder b)]) = _$ListTherapistPatients200ResponseAllOfData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListTherapistPatients200ResponseAllOfDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListTherapistPatients200ResponseAllOfData> get serializer => _$ListTherapistPatients200ResponseAllOfDataSerializer();
}

class _$ListTherapistPatients200ResponseAllOfDataSerializer implements PrimitiveSerializer<ListTherapistPatients200ResponseAllOfData> {
  @override
  final Iterable<Type> types = const [ListTherapistPatients200ResponseAllOfData, _$ListTherapistPatients200ResponseAllOfData];

  @override
  final String wireName = r'ListTherapistPatients200ResponseAllOfData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListTherapistPatients200ResponseAllOfData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.needsAttention != null) {
      yield r'needsAttention';
      yield serializers.serialize(
        object.needsAttention,
        specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
      );
    }
    if (object.checkInWhenYouCan != null) {
      yield r'checkInWhenYouCan';
      yield serializers.serialize(
        object.checkInWhenYouCan,
        specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
      );
    }
    if (object.progressingWell != null) {
      yield r'progressingWell';
      yield serializers.serialize(
        object.progressingWell,
        specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
      );
    }
    if (object.noRecentActivity != null) {
      yield r'noRecentActivity';
      yield serializers.serialize(
        object.noRecentActivity,
        specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListTherapistPatients200ResponseAllOfData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListTherapistPatients200ResponseAllOfDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'needsAttention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
          ) as BuiltList<PatientCard>;
          result.needsAttention.replace(valueDes);
          break;
        case r'checkInWhenYouCan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
          ) as BuiltList<PatientCard>;
          result.checkInWhenYouCan.replace(valueDes);
          break;
        case r'progressingWell':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
          ) as BuiltList<PatientCard>;
          result.progressingWell.replace(valueDes);
          break;
        case r'noRecentActivity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PatientCard)]),
          ) as BuiltList<PatientCard>;
          result.noRecentActivity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListTherapistPatients200ResponseAllOfData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTherapistPatients200ResponseAllOfDataBuilder();
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

