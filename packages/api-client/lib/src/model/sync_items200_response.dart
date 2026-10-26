//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/sync_items200_response_all_of_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sync_items200_response.g.dart';

/// SyncItems200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class SyncItems200Response implements SuccessEnvelope, Built<SyncItems200Response, SyncItems200ResponseBuilder> {
  SyncItems200Response._();

  factory SyncItems200Response([void updates(SyncItems200ResponseBuilder b)]) = _$SyncItems200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SyncItems200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SyncItems200Response> get serializer => _$SyncItems200ResponseSerializer();
}

class _$SyncItems200ResponseSerializer implements PrimitiveSerializer<SyncItems200Response> {
  @override
  final Iterable<Type> types = const [SyncItems200Response, _$SyncItems200Response];

  @override
  final String wireName = r'SyncItems200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SyncItems200Response object, {
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
    SyncItems200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SyncItems200ResponseBuilder result,
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
  SyncItems200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SyncItems200ResponseBuilder();
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

class SyncItems200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const SyncItems200ResponseSuccessEnum true_ = _$syncItems200ResponseSuccessEnum_true_;

  static Serializer<SyncItems200ResponseSuccessEnum> get serializer => _$syncItems200ResponseSuccessEnumSerializer;

  const SyncItems200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<SyncItems200ResponseSuccessEnum> get values => _$syncItems200ResponseSuccessEnumValues;
  static SyncItems200ResponseSuccessEnum valueOf(String name) => _$syncItems200ResponseSuccessEnumValueOf(name);
}

