//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sync_item.g.dart';

/// SyncItem
///
/// Properties:
/// * [clientId] 
/// * [kind] 
/// * [clientCreatedAt] 
/// * [payload] 
@BuiltValue()
abstract class SyncItem implements Built<SyncItem, SyncItemBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'kind')
  SyncItemKindEnum get kind;
  // enum kindEnum {  check_in,  journal_entry,  task_completion,  survey_response,  };

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime get clientCreatedAt;

  @BuiltValueField(wireName: r'payload')
  JsonObject get payload;

  SyncItem._();

  factory SyncItem([void updates(SyncItemBuilder b)]) = _$SyncItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SyncItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SyncItem> get serializer => _$SyncItemSerializer();
}

class _$SyncItemSerializer implements PrimitiveSerializer<SyncItem> {
  @override
  final Iterable<Type> types = const [SyncItem, _$SyncItem];

  @override
  final String wireName = r'SyncItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SyncItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(SyncItemKindEnum),
    );
    yield r'clientCreatedAt';
    yield serializers.serialize(
      object.clientCreatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SyncItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SyncItemBuilder result,
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
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SyncItemKindEnum),
          ) as SyncItemKindEnum;
          result.kind = valueDes;
          break;
        case r'clientCreatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.clientCreatedAt = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.payload = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SyncItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SyncItemBuilder();
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

class SyncItemKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'check_in')
  static const SyncItemKindEnum checkIn = _$syncItemKindEnum_checkIn;
  @BuiltValueEnumConst(wireName: r'journal_entry')
  static const SyncItemKindEnum journalEntry = _$syncItemKindEnum_journalEntry;
  @BuiltValueEnumConst(wireName: r'task_completion')
  static const SyncItemKindEnum taskCompletion = _$syncItemKindEnum_taskCompletion;
  @BuiltValueEnumConst(wireName: r'survey_response')
  static const SyncItemKindEnum surveyResponse = _$syncItemKindEnum_surveyResponse;

  static Serializer<SyncItemKindEnum> get serializer => _$syncItemKindEnumSerializer;

  const SyncItemKindEnum._(String name): super(name);

  static BuiltSet<SyncItemKindEnum> get values => _$syncItemKindEnumValues;
  static SyncItemKindEnum valueOf(String name) => _$syncItemKindEnumValueOf(name);
}

