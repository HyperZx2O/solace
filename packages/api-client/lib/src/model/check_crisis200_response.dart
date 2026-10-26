//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/crisis_decision.dart';
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_crisis200_response.g.dart';

/// CheckCrisis200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class CheckCrisis200Response implements SuccessEnvelope, Built<CheckCrisis200Response, CheckCrisis200ResponseBuilder> {
  CheckCrisis200Response._();

  factory CheckCrisis200Response([void updates(CheckCrisis200ResponseBuilder b)]) = _$CheckCrisis200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckCrisis200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckCrisis200Response> get serializer => _$CheckCrisis200ResponseSerializer();
}

class _$CheckCrisis200ResponseSerializer implements PrimitiveSerializer<CheckCrisis200Response> {
  @override
  final Iterable<Type> types = const [CheckCrisis200Response, _$CheckCrisis200Response];

  @override
  final String wireName = r'CheckCrisis200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckCrisis200Response object, {
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
    CheckCrisis200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckCrisis200ResponseBuilder result,
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
  CheckCrisis200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckCrisis200ResponseBuilder();
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

class CheckCrisis200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const CheckCrisis200ResponseSuccessEnum true_ = _$checkCrisis200ResponseSuccessEnum_true_;

  static Serializer<CheckCrisis200ResponseSuccessEnum> get serializer => _$checkCrisis200ResponseSuccessEnumSerializer;

  const CheckCrisis200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<CheckCrisis200ResponseSuccessEnum> get values => _$checkCrisis200ResponseSuccessEnumValues;
  static CheckCrisis200ResponseSuccessEnum valueOf(String name) => _$checkCrisis200ResponseSuccessEnumValueOf(name);
}

