//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_responses_request.g.dart';

/// SurveyResponsesRequest
///
/// Properties:
/// * [clientId] 
/// * [clientCreatedAt] 
/// * [responses] 
@BuiltValue()
abstract class SurveyResponsesRequest implements Built<SurveyResponsesRequest, SurveyResponsesRequestBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime get clientCreatedAt;

  @BuiltValueField(wireName: r'responses')
  BuiltMap<String, int> get responses;

  SurveyResponsesRequest._();

  factory SurveyResponsesRequest([void updates(SurveyResponsesRequestBuilder b)]) = _$SurveyResponsesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyResponsesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyResponsesRequest> get serializer => _$SurveyResponsesRequestSerializer();
}

class _$SurveyResponsesRequestSerializer implements PrimitiveSerializer<SurveyResponsesRequest> {
  @override
  final Iterable<Type> types = const [SurveyResponsesRequest, _$SurveyResponsesRequest];

  @override
  final String wireName = r'SurveyResponsesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyResponsesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'clientCreatedAt';
    yield serializers.serialize(
      object.clientCreatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'responses';
    yield serializers.serialize(
      object.responses,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyResponsesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurveyResponsesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'clientCreatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.clientCreatedAt = valueDes;
          break;
        case r'responses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.responses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SurveyResponsesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyResponsesRequestBuilder();
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

