//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:solace_api/src/model/check_in.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_check_ins200_response.g.dart';

/// ListCheckIns200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class ListCheckIns200Response implements SuccessEnvelope, Built<ListCheckIns200Response, ListCheckIns200ResponseBuilder> {
  ListCheckIns200Response._();

  factory ListCheckIns200Response([void updates(ListCheckIns200ResponseBuilder b)]) = _$ListCheckIns200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListCheckIns200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListCheckIns200Response> get serializer => _$ListCheckIns200ResponseSerializer();
}

class _$ListCheckIns200ResponseSerializer implements PrimitiveSerializer<ListCheckIns200Response> {
  @override
  final Iterable<Type> types = const [ListCheckIns200Response, _$ListCheckIns200Response];

  @override
  final String wireName = r'ListCheckIns200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListCheckIns200Response object, {
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
    ListCheckIns200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListCheckIns200ResponseBuilder result,
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
  ListCheckIns200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListCheckIns200ResponseBuilder();
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

class ListCheckIns200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const ListCheckIns200ResponseSuccessEnum true_ = _$listCheckIns200ResponseSuccessEnum_true_;

  static Serializer<ListCheckIns200ResponseSuccessEnum> get serializer => _$listCheckIns200ResponseSuccessEnumSerializer;

  const ListCheckIns200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<ListCheckIns200ResponseSuccessEnum> get values => _$listCheckIns200ResponseSuccessEnumValues;
  static ListCheckIns200ResponseSuccessEnum valueOf(String name) => _$listCheckIns200ResponseSuccessEnumValueOf(name);
}

