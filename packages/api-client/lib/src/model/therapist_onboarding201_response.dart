//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/therapist_profile.dart';
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'therapist_onboarding201_response.g.dart';

/// TherapistOnboarding201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class TherapistOnboarding201Response implements SuccessEnvelope, Built<TherapistOnboarding201Response, TherapistOnboarding201ResponseBuilder> {
  TherapistOnboarding201Response._();

  factory TherapistOnboarding201Response([void updates(TherapistOnboarding201ResponseBuilder b)]) = _$TherapistOnboarding201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TherapistOnboarding201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TherapistOnboarding201Response> get serializer => _$TherapistOnboarding201ResponseSerializer();
}

class _$TherapistOnboarding201ResponseSerializer implements PrimitiveSerializer<TherapistOnboarding201Response> {
  @override
  final Iterable<Type> types = const [TherapistOnboarding201Response, _$TherapistOnboarding201Response];

  @override
  final String wireName = r'TherapistOnboarding201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TherapistOnboarding201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'error';
    yield object.error == null ? null : serializers.serialize(
      object.error,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(SuccessEnvelopeSuccessEnum),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TherapistOnboarding201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TherapistOnboarding201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SuccessEnvelopeSuccessEnum),
          ) as SuccessEnvelopeSuccessEnum;
          result.success = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TherapistOnboarding201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TherapistOnboarding201ResponseBuilder();
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

class TherapistOnboarding201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const TherapistOnboarding201ResponseSuccessEnum true_ = _$therapistOnboarding201ResponseSuccessEnum_true_;

  static Serializer<TherapistOnboarding201ResponseSuccessEnum> get serializer => _$therapistOnboarding201ResponseSuccessEnumSerializer;

  const TherapistOnboarding201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<TherapistOnboarding201ResponseSuccessEnum> get values => _$therapistOnboarding201ResponseSuccessEnumValues;
  static TherapistOnboarding201ResponseSuccessEnum valueOf(String name) => _$therapistOnboarding201ResponseSuccessEnumValueOf(name);
}

