//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patient_summary.g.dart';

/// PatientSummary
///
/// Properties:
/// * [patientId] 
/// * [body] 
/// * [disclaimer] - Required. A summary without this field fails validation.
/// * [generatedAt] 
@BuiltValue()
abstract class PatientSummary implements Built<PatientSummary, PatientSummaryBuilder> {
  @BuiltValueField(wireName: r'patientId')
  String get patientId;

  @BuiltValueField(wireName: r'body')
  String get body;

  /// Required. A summary without this field fails validation.
  @BuiltValueField(wireName: r'disclaimer')
  String get disclaimer;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  PatientSummary._();

  factory PatientSummary([void updates(PatientSummaryBuilder b)]) = _$PatientSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatientSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatientSummary> get serializer => _$PatientSummarySerializer();
}

class _$PatientSummarySerializer implements PrimitiveSerializer<PatientSummary> {
  @override
  final Iterable<Type> types = const [PatientSummary, _$PatientSummary];

  @override
  final String wireName = r'PatientSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatientSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'patientId';
    yield serializers.serialize(
      object.patientId,
      specifiedType: const FullType(String),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    yield r'disclaimer';
    yield serializers.serialize(
      object.disclaimer,
      specifiedType: const FullType(String),
    );
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PatientSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatientSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'patientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.patientId = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'disclaimer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.disclaimer = valueDes;
          break;
        case r'generatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatientSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatientSummaryBuilder();
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

