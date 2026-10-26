//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/deletion_request.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_deletion201_response.g.dart';

/// RequestDeletion201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class RequestDeletion201Response implements SuccessEnvelope, Built<RequestDeletion201Response, RequestDeletion201ResponseBuilder> {
  RequestDeletion201Response._();

  factory RequestDeletion201Response([void updates(RequestDeletion201ResponseBuilder b)]) = _$RequestDeletion201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RequestDeletion201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RequestDeletion201Response> get serializer => _$RequestDeletion201ResponseSerializer();
}

class _$RequestDeletion201ResponseSerializer implements PrimitiveSerializer<RequestDeletion201Response> {
  @override
  final Iterable<Type> types = const [RequestDeletion201Response, _$RequestDeletion201Response];

  @override
  final String wireName = r'RequestDeletion201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RequestDeletion201Response object, {
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
    RequestDeletion201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RequestDeletion201ResponseBuilder result,
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
  RequestDeletion201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestDeletion201ResponseBuilder();
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

class RequestDeletion201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const RequestDeletion201ResponseSuccessEnum true_ = _$requestDeletion201ResponseSuccessEnum_true_;

  static Serializer<RequestDeletion201ResponseSuccessEnum> get serializer => _$requestDeletion201ResponseSuccessEnumSerializer;

  const RequestDeletion201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<RequestDeletion201ResponseSuccessEnum> get values => _$requestDeletion201ResponseSuccessEnumValues;
  static RequestDeletion201ResponseSuccessEnum valueOf(String name) => _$requestDeletion201ResponseSuccessEnumValueOf(name);
}

