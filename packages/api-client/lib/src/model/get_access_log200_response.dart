//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/access_log_entry.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_access_log200_response.g.dart';

/// GetAccessLog200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class GetAccessLog200Response implements SuccessEnvelope, Built<GetAccessLog200Response, GetAccessLog200ResponseBuilder> {
  GetAccessLog200Response._();

  factory GetAccessLog200Response([void updates(GetAccessLog200ResponseBuilder b)]) = _$GetAccessLog200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAccessLog200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAccessLog200Response> get serializer => _$GetAccessLog200ResponseSerializer();
}

class _$GetAccessLog200ResponseSerializer implements PrimitiveSerializer<GetAccessLog200Response> {
  @override
  final Iterable<Type> types = const [GetAccessLog200Response, _$GetAccessLog200Response];

  @override
  final String wireName = r'GetAccessLog200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAccessLog200Response object, {
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
    GetAccessLog200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAccessLog200ResponseBuilder result,
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
  GetAccessLog200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccessLog200ResponseBuilder();
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

class GetAccessLog200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const GetAccessLog200ResponseSuccessEnum true_ = _$getAccessLog200ResponseSuccessEnum_true_;

  static Serializer<GetAccessLog200ResponseSuccessEnum> get serializer => _$getAccessLog200ResponseSuccessEnumSerializer;

  const GetAccessLog200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<GetAccessLog200ResponseSuccessEnum> get values => _$getAccessLog200ResponseSuccessEnumValues;
  static GetAccessLog200ResponseSuccessEnum valueOf(String name) => _$getAccessLog200ResponseSuccessEnumValueOf(name);
}

