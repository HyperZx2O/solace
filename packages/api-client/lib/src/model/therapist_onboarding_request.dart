//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'therapist_onboarding_request.g.dart';

/// TherapistOnboardingRequest
///
/// Properties:
/// * [licenceNumber] 
/// * [professionalBody] 
/// * [countryOfPractice] 
/// * [password] 
@BuiltValue()
abstract class TherapistOnboardingRequest implements Built<TherapistOnboardingRequest, TherapistOnboardingRequestBuilder> {
  @BuiltValueField(wireName: r'licenceNumber')
  String get licenceNumber;

  @BuiltValueField(wireName: r'professionalBody')
  String get professionalBody;

  @BuiltValueField(wireName: r'countryOfPractice')
  String get countryOfPractice;

  @BuiltValueField(wireName: r'password')
  String? get password;

  TherapistOnboardingRequest._();

  factory TherapistOnboardingRequest([void updates(TherapistOnboardingRequestBuilder b)]) = _$TherapistOnboardingRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TherapistOnboardingRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TherapistOnboardingRequest> get serializer => _$TherapistOnboardingRequestSerializer();
}

class _$TherapistOnboardingRequestSerializer implements PrimitiveSerializer<TherapistOnboardingRequest> {
  @override
  final Iterable<Type> types = const [TherapistOnboardingRequest, _$TherapistOnboardingRequest];

  @override
  final String wireName = r'TherapistOnboardingRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TherapistOnboardingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'licenceNumber';
    yield serializers.serialize(
      object.licenceNumber,
      specifiedType: const FullType(String),
    );
    yield r'professionalBody';
    yield serializers.serialize(
      object.professionalBody,
      specifiedType: const FullType(String),
    );
    yield r'countryOfPractice';
    yield serializers.serialize(
      object.countryOfPractice,
      specifiedType: const FullType(String),
    );
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TherapistOnboardingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TherapistOnboardingRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'licenceNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licenceNumber = valueDes;
          break;
        case r'professionalBody':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.professionalBody = valueDes;
          break;
        case r'countryOfPractice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.countryOfPractice = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TherapistOnboardingRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TherapistOnboardingRequestBuilder();
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

