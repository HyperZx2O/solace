//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/survey_result.dart';
import 'package:between_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_survey_results200_response.g.dart';

/// ListSurveyResults200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class ListSurveyResults200Response implements SuccessEnvelope, Built<ListSurveyResults200Response, ListSurveyResults200ResponseBuilder> {
  ListSurveyResults200Response._();

  factory ListSurveyResults200Response([void updates(ListSurveyResults200ResponseBuilder b)]) = _$ListSurveyResults200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListSurveyResults200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListSurveyResults200Response> get serializer => _$ListSurveyResults200ResponseSerializer();
}

class _$ListSurveyResults200ResponseSerializer implements PrimitiveSerializer<ListSurveyResults200Response> {
  @override
  final Iterable<Type> types = const [ListSurveyResults200Response, _$ListSurveyResults200Response];

  @override
  final String wireName = r'ListSurveyResults200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListSurveyResults200Response object, {
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
    ListSurveyResults200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListSurveyResults200ResponseBuilder result,
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
  ListSurveyResults200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSurveyResults200ResponseBuilder();
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

class ListSurveyResults200ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const ListSurveyResults200ResponseSuccessEnum true_ = _$listSurveyResults200ResponseSuccessEnum_true_;

  static Serializer<ListSurveyResults200ResponseSuccessEnum> get serializer => _$listSurveyResults200ResponseSuccessEnumSerializer;

  const ListSurveyResults200ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<ListSurveyResults200ResponseSuccessEnum> get values => _$listSurveyResults200ResponseSuccessEnumValues;
  static ListSurveyResults200ResponseSuccessEnum valueOf(String name) => _$listSurveyResults200ResponseSuccessEnumValueOf(name);
}

