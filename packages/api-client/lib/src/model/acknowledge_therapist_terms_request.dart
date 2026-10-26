//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'acknowledge_therapist_terms_request.g.dart';

/// AcknowledgeTherapistTermsRequest
///
/// Properties:
/// * [dsa] 
/// * [crisisResponsibilities] 
/// * [emergencyStatement] 
@BuiltValue()
abstract class AcknowledgeTherapistTermsRequest implements Built<AcknowledgeTherapistTermsRequest, AcknowledgeTherapistTermsRequestBuilder> {
  @BuiltValueField(wireName: r'dsa')
  bool get dsa;

  @BuiltValueField(wireName: r'crisisResponsibilities')
  bool get crisisResponsibilities;

  @BuiltValueField(wireName: r'emergencyStatement')
  bool get emergencyStatement;

  AcknowledgeTherapistTermsRequest._();

  factory AcknowledgeTherapistTermsRequest([void updates(AcknowledgeTherapistTermsRequestBuilder b)]) = _$AcknowledgeTherapistTermsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AcknowledgeTherapistTermsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AcknowledgeTherapistTermsRequest> get serializer => _$AcknowledgeTherapistTermsRequestSerializer();
}

class _$AcknowledgeTherapistTermsRequestSerializer implements PrimitiveSerializer<AcknowledgeTherapistTermsRequest> {
  @override
  final Iterable<Type> types = const [AcknowledgeTherapistTermsRequest, _$AcknowledgeTherapistTermsRequest];

  @override
  final String wireName = r'AcknowledgeTherapistTermsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AcknowledgeTherapistTermsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dsa';
    yield serializers.serialize(
      object.dsa,
      specifiedType: const FullType(bool),
    );
    yield r'crisisResponsibilities';
    yield serializers.serialize(
      object.crisisResponsibilities,
      specifiedType: const FullType(bool),
    );
    yield r'emergencyStatement';
    yield serializers.serialize(
      object.emergencyStatement,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AcknowledgeTherapistTermsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AcknowledgeTherapistTermsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dsa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dsa = valueDes;
          break;
        case r'crisisResponsibilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.crisisResponsibilities = valueDes;
          break;
        case r'emergencyStatement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emergencyStatement = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AcknowledgeTherapistTermsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcknowledgeTherapistTermsRequestBuilder();
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

