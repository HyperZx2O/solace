//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/error_envelope_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_envelope.g.dart';

/// ErrorEnvelope
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class ErrorEnvelope implements Built<ErrorEnvelope, ErrorEnvelopeBuilder> {
  @BuiltValueField(wireName: r'success')
  ErrorEnvelopeSuccessEnum get success;
  // enum successEnum {  false,  };

  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  @BuiltValueField(wireName: r'error')
  ErrorEnvelopeError get error;

  ErrorEnvelope._();

  factory ErrorEnvelope([void updates(ErrorEnvelopeBuilder b)]) = _$ErrorEnvelope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorEnvelopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorEnvelope> get serializer => _$ErrorEnvelopeSerializer();
}

class _$ErrorEnvelopeSerializer implements PrimitiveSerializer<ErrorEnvelope> {
  @override
  final Iterable<Type> types = const [ErrorEnvelope, _$ErrorEnvelope];

  @override
  final String wireName = r'ErrorEnvelope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorEnvelope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(ErrorEnvelopeSuccessEnum),
    );
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(ErrorEnvelopeError),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorEnvelope object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorEnvelopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ErrorEnvelopeSuccessEnum),
          ) as ErrorEnvelopeSuccessEnum;
          result.success = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ErrorEnvelopeError),
          ) as ErrorEnvelopeError;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorEnvelope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorEnvelopeBuilder();
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

class ErrorEnvelopeSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'false')
  static const ErrorEnvelopeSuccessEnum false_ = _$errorEnvelopeSuccessEnum_false_;

  static Serializer<ErrorEnvelopeSuccessEnum> get serializer => _$errorEnvelopeSuccessEnumSerializer;

  const ErrorEnvelopeSuccessEnum._(String name): super(name);

  static BuiltSet<ErrorEnvelopeSuccessEnum> get values => _$errorEnvelopeSuccessEnumValues;
  static ErrorEnvelopeSuccessEnum valueOf(String name) => _$errorEnvelopeSuccessEnumValueOf(name);
}

