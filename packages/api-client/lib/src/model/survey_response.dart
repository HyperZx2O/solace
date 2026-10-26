//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_response.g.dart';

/// SurveyResponse
///
/// Properties:
/// * [id] 
/// * [surveyId] 
/// * [status] 
/// * [clientId] 
/// * [clientCreatedAt] 
/// * [serverReceivedAt] 
/// * [duplicate] 
@BuiltValue()
abstract class SurveyResponse implements Built<SurveyResponse, SurveyResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'surveyId')
  String get surveyId;

  @BuiltValueField(wireName: r'status')
  SurveyResponseStatusEnum get status;
  // enum statusEnum {  in_progress,  completed,  };

  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime? get clientCreatedAt;

  @BuiltValueField(wireName: r'serverReceivedAt')
  DateTime get serverReceivedAt;

  @BuiltValueField(wireName: r'duplicate')
  bool? get duplicate;

  SurveyResponse._();

  factory SurveyResponse([void updates(SurveyResponseBuilder b)]) = _$SurveyResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyResponse> get serializer => _$SurveyResponseSerializer();
}

class _$SurveyResponseSerializer implements PrimitiveSerializer<SurveyResponse> {
  @override
  final Iterable<Type> types = const [SurveyResponse, _$SurveyResponse];

  @override
  final String wireName = r'SurveyResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'surveyId';
    yield serializers.serialize(
      object.surveyId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SurveyResponseStatusEnum),
    );
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    if (object.clientCreatedAt != null) {
      yield r'clientCreatedAt';
      yield serializers.serialize(
        object.clientCreatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'serverReceivedAt';
    yield serializers.serialize(
      object.serverReceivedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.duplicate != null) {
      yield r'duplicate';
      yield serializers.serialize(
        object.duplicate,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurveyResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'surveyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surveyId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyResponseStatusEnum),
          ) as SurveyResponseStatusEnum;
          result.status = valueDes;
          break;
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
        case r'serverReceivedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.serverReceivedAt = valueDes;
          break;
        case r'duplicate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.duplicate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SurveyResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyResponseBuilder();
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

class SurveyResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'in_progress')
  static const SurveyResponseStatusEnum inProgress = _$surveyResponseStatusEnum_inProgress;
  @BuiltValueEnumConst(wireName: r'completed')
  static const SurveyResponseStatusEnum completed = _$surveyResponseStatusEnum_completed;

  static Serializer<SurveyResponseStatusEnum> get serializer => _$surveyResponseStatusEnumSerializer;

  const SurveyResponseStatusEnum._(String name): super(name);

  static BuiltSet<SurveyResponseStatusEnum> get values => _$surveyResponseStatusEnumValues;
  static SurveyResponseStatusEnum valueOf(String name) => _$surveyResponseStatusEnumValueOf(name);
}

