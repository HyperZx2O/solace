//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:between_api/src/model/therapist_alert.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_therapist_alerts200_response.g.dart';

/// ListTherapistAlerts200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class ListTherapistAlerts200Response implements SuccessEnvelope, Built<ListTherapistAlerts200Response, ListTherapistAlerts200ResponseBuilder> {
  ListTherapistAlerts200Response._();

  factory ListTherapistAlerts200Response([void updates(ListTherapistAlerts200ResponseBuilder b)]) = _$ListTherapistAlerts200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListTherapistAlerts200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListTherapistAlerts200Response> get serializer => _$ListTherapistAlerts200ResponseSerializer();
}

class _$ListTherapistAlerts200ResponseSerializer implements PrimitiveSerializer<ListTherapistAlerts200Response> {
  @override
  final Iterable<Type> types = const [ListTherapistAlerts200Response, _$ListTherapistAlerts200Response];

  @override
  final String wireName = r'ListTherapistAlerts200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListTherapistAlerts200Response object, {
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
    ListTherapistAlerts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListTherapistAlerts200ResponseBuilder result,
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
  ListTherapistAlerts200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTherapistAlerts200ResponseBuilder();
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

class ListTherapistAlerts200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const ListTherapistAlerts200ResponseSuccessEnum true_ = _$listTherapistAlerts200ResponseSuccessEnum_true_;

  static Serializer<ListTherapistAlerts200ResponseSuccessEnum> get serializer => _$listTherapistAlerts200ResponseSuccessEnumSerializer;

  const ListTherapistAlerts200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<ListTherapistAlerts200ResponseSuccessEnum> get values => _$listTherapistAlerts200ResponseSuccessEnumValues;
  static ListTherapistAlerts200ResponseSuccessEnum valueOf(String name) => _$listTherapistAlerts200ResponseSuccessEnumValueOf(name);
}

