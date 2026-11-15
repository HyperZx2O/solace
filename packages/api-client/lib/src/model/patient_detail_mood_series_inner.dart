//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patient_detail_mood_series_inner.g.dart';

/// PatientDetailMoodSeriesInner
///
/// Properties:
/// * [date] 
/// * [mood] 
@BuiltValue()
abstract class PatientDetailMoodSeriesInner implements Built<PatientDetailMoodSeriesInner, PatientDetailMoodSeriesInnerBuilder> {
  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'mood')
  int? get mood;

  PatientDetailMoodSeriesInner._();

  factory PatientDetailMoodSeriesInner([void updates(PatientDetailMoodSeriesInnerBuilder b)]) = _$PatientDetailMoodSeriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatientDetailMoodSeriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatientDetailMoodSeriesInner> get serializer => _$PatientDetailMoodSeriesInnerSerializer();
}

class _$PatientDetailMoodSeriesInnerSerializer implements PrimitiveSerializer<PatientDetailMoodSeriesInner> {
  @override
  final Iterable<Type> types = const [PatientDetailMoodSeriesInner, _$PatientDetailMoodSeriesInner];

  @override
  final String wireName = r'PatientDetailMoodSeriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatientDetailMoodSeriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.mood != null) {
      yield r'mood';
      yield serializers.serialize(
        object.mood,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatientDetailMoodSeriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatientDetailMoodSeriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'mood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mood = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatientDetailMoodSeriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatientDetailMoodSeriesInnerBuilder();
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

