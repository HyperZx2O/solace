//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/export_request.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_export201_response.g.dart';

/// RequestExport201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class RequestExport201Response implements SuccessEnvelope, Built<RequestExport201Response, RequestExport201ResponseBuilder> {
  RequestExport201Response._();

  factory RequestExport201Response([void updates(RequestExport201ResponseBuilder b)]) = _$RequestExport201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RequestExport201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RequestExport201Response> get serializer => _$RequestExport201ResponseSerializer();
}

class _$RequestExport201ResponseSerializer implements PrimitiveSerializer<RequestExport201Response> {
  @override
  final Iterable<Type> types = const [RequestExport201Response, _$RequestExport201Response];

  @override
  final String wireName = r'RequestExport201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RequestExport201Response object, {
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
    RequestExport201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RequestExport201ResponseBuilder result,
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
  RequestExport201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestExport201ResponseBuilder();
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

class RequestExport201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const RequestExport201ResponseSuccessEnum true_ = _$requestExport201ResponseSuccessEnum_true_;

  static Serializer<RequestExport201ResponseSuccessEnum> get serializer => _$requestExport201ResponseSuccessEnumSerializer;

  const RequestExport201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<RequestExport201ResponseSuccessEnum> get values => _$requestExport201ResponseSuccessEnumValues;
  static RequestExport201ResponseSuccessEnum valueOf(String name) => _$requestExport201ResponseSuccessEnumValueOf(name);
}

