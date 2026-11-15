//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:solace_api/src/model/list_therapist_patients200_response_all_of_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_therapist_patients200_response.g.dart';

/// ListTherapistPatients200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class ListTherapistPatients200Response implements SuccessEnvelope, Built<ListTherapistPatients200Response, ListTherapistPatients200ResponseBuilder> {
  ListTherapistPatients200Response._();

  factory ListTherapistPatients200Response([void updates(ListTherapistPatients200ResponseBuilder b)]) = _$ListTherapistPatients200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListTherapistPatients200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListTherapistPatients200Response> get serializer => _$ListTherapistPatients200ResponseSerializer();
}

class _$ListTherapistPatients200ResponseSerializer implements PrimitiveSerializer<ListTherapistPatients200Response> {
  @override
  final Iterable<Type> types = const [ListTherapistPatients200Response, _$ListTherapistPatients200Response];

  @override
  final String wireName = r'ListTherapistPatients200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListTherapistPatients200Response object, {
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
    ListTherapistPatients200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListTherapistPatients200ResponseBuilder result,
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
  ListTherapistPatients200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTherapistPatients200ResponseBuilder();
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

class ListTherapistPatients200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const ListTherapistPatients200ResponseSuccessEnum true_ = _$listTherapistPatients200ResponseSuccessEnum_true_;

  static Serializer<ListTherapistPatients200ResponseSuccessEnum> get serializer => _$listTherapistPatients200ResponseSuccessEnumSerializer;

  const ListTherapistPatients200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<ListTherapistPatients200ResponseSuccessEnum> get values => _$listTherapistPatients200ResponseSuccessEnumValues;
  static ListTherapistPatients200ResponseSuccessEnum valueOf(String name) => _$listTherapistPatients200ResponseSuccessEnumValueOf(name);
}

