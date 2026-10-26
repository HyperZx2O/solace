//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'therapist_profile.g.dart';

/// TherapistProfile
///
/// Properties:
/// * [id] 
/// * [verificationStatus] 
/// * [professionalBody] 
/// * [countryOfPractice] 
/// * [verifiedAt] 
/// * [expiresAt] 
/// * [mfaEnabled] 
@BuiltValue()
abstract class TherapistProfile implements Built<TherapistProfile, TherapistProfileBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'verificationStatus')
  TherapistProfileVerificationStatusEnum get verificationStatus;
  // enum verificationStatusEnum {  pending,  verified,  expired_grace,  suspended,  revoked,  };

  @BuiltValueField(wireName: r'professionalBody')
  String get professionalBody;

  @BuiltValueField(wireName: r'countryOfPractice')
  String get countryOfPractice;

  @BuiltValueField(wireName: r'verifiedAt')
  DateTime? get verifiedAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'mfaEnabled')
  bool? get mfaEnabled;

  TherapistProfile._();

  factory TherapistProfile([void updates(TherapistProfileBuilder b)]) = _$TherapistProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TherapistProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TherapistProfile> get serializer => _$TherapistProfileSerializer();
}

class _$TherapistProfileSerializer implements PrimitiveSerializer<TherapistProfile> {
  @override
  final Iterable<Type> types = const [TherapistProfile, _$TherapistProfile];

  @override
  final String wireName = r'TherapistProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TherapistProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'verificationStatus';
    yield serializers.serialize(
      object.verificationStatus,
      specifiedType: const FullType(TherapistProfileVerificationStatusEnum),
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
    if (object.verifiedAt != null) {
      yield r'verifiedAt';
      yield serializers.serialize(
        object.verifiedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.mfaEnabled != null) {
      yield r'mfaEnabled';
      yield serializers.serialize(
        object.mfaEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TherapistProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TherapistProfileBuilder result,
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
        case r'verificationStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TherapistProfileVerificationStatusEnum),
          ) as TherapistProfileVerificationStatusEnum;
          result.verificationStatus = valueDes;
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
        case r'verifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.verifiedAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'mfaEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mfaEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TherapistProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TherapistProfileBuilder();
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

class TherapistProfileVerificationStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const TherapistProfileVerificationStatusEnum pending = _$therapistProfileVerificationStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'verified')
  static const TherapistProfileVerificationStatusEnum verified = _$therapistProfileVerificationStatusEnum_verified;
  @BuiltValueEnumConst(wireName: r'expired_grace')
  static const TherapistProfileVerificationStatusEnum expiredGrace = _$therapistProfileVerificationStatusEnum_expiredGrace;
  @BuiltValueEnumConst(wireName: r'suspended')
  static const TherapistProfileVerificationStatusEnum suspended = _$therapistProfileVerificationStatusEnum_suspended;
  @BuiltValueEnumConst(wireName: r'revoked')
  static const TherapistProfileVerificationStatusEnum revoked = _$therapistProfileVerificationStatusEnum_revoked;

  static Serializer<TherapistProfileVerificationStatusEnum> get serializer => _$therapistProfileVerificationStatusEnumSerializer;

  const TherapistProfileVerificationStatusEnum._(String name): super(name);

  static BuiltSet<TherapistProfileVerificationStatusEnum> get values => _$therapistProfileVerificationStatusEnumValues;
  static TherapistProfileVerificationStatusEnum valueOf(String name) => _$therapistProfileVerificationStatusEnumValueOf(name);
}

