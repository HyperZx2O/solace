//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/journal_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_journal_entry201_response.g.dart';

/// CreateJournalEntry201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class CreateJournalEntry201Response implements SuccessEnvelope, Built<CreateJournalEntry201Response, CreateJournalEntry201ResponseBuilder> {
  CreateJournalEntry201Response._();

  factory CreateJournalEntry201Response([void updates(CreateJournalEntry201ResponseBuilder b)]) = _$CreateJournalEntry201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateJournalEntry201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateJournalEntry201Response> get serializer => _$CreateJournalEntry201ResponseSerializer();
}

class _$CreateJournalEntry201ResponseSerializer implements PrimitiveSerializer<CreateJournalEntry201Response> {
  @override
  final Iterable<Type> types = const [CreateJournalEntry201Response, _$CreateJournalEntry201Response];

  @override
  final String wireName = r'CreateJournalEntry201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateJournalEntry201Response object, {
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
    CreateJournalEntry201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateJournalEntry201ResponseBuilder result,
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
  CreateJournalEntry201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateJournalEntry201ResponseBuilder();
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

class CreateJournalEntry201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const CreateJournalEntry201ResponseSuccessEnum true_ = _$createJournalEntry201ResponseSuccessEnum_true_;

  static Serializer<CreateJournalEntry201ResponseSuccessEnum> get serializer => _$createJournalEntry201ResponseSuccessEnumSerializer;

  const CreateJournalEntry201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<CreateJournalEntry201ResponseSuccessEnum> get values => _$createJournalEntry201ResponseSuccessEnumValues;
  static CreateJournalEntry201ResponseSuccessEnum valueOf(String name) => _$createJournalEntry201ResponseSuccessEnumValueOf(name);
}

