//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/journal_kind.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'journal_entry.g.dart';

/// JournalEntry
///
/// Properties:
/// * [id] 
/// * [kind] 
/// * [clientId] 
/// * [clientCreatedAt] 
/// * [serverReceivedAt] 
/// * [analysisStatus] 
/// * [historical] 
/// * [duplicate] 
@BuiltValue()
abstract class JournalEntry implements Built<JournalEntry, JournalEntryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  JournalKind get kind;
  // enum kindEnum {  recovery,  personal,  };

  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime get clientCreatedAt;

  @BuiltValueField(wireName: r'serverReceivedAt')
  DateTime get serverReceivedAt;

  @BuiltValueField(wireName: r'analysisStatus')
  JournalEntryAnalysisStatusEnum get analysisStatus;
  // enum analysisStatusEnum {  pending,  queued,  succeeded,  failed,  };

  @BuiltValueField(wireName: r'historical')
  bool? get historical;

  @BuiltValueField(wireName: r'duplicate')
  bool? get duplicate;

  JournalEntry._();

  factory JournalEntry([void updates(JournalEntryBuilder b)]) = _$JournalEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JournalEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JournalEntry> get serializer => _$JournalEntrySerializer();
}

class _$JournalEntrySerializer implements PrimitiveSerializer<JournalEntry> {
  @override
  final Iterable<Type> types = const [JournalEntry, _$JournalEntry];

  @override
  final String wireName = r'JournalEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JournalEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(JournalKind),
    );
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
    yield r'serverReceivedAt';
    yield serializers.serialize(
      object.serverReceivedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'analysisStatus';
    yield serializers.serialize(
      object.analysisStatus,
      specifiedType: const FullType(JournalEntryAnalysisStatusEnum),
    );
    if (object.historical != null) {
      yield r'historical';
      yield serializers.serialize(
        object.historical,
        specifiedType: const FullType(bool),
      );
    }
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
    JournalEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JournalEntryBuilder result,
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
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JournalKind),
          ) as JournalKind;
          result.kind = valueDes;
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
        case r'analysisStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JournalEntryAnalysisStatusEnum),
          ) as JournalEntryAnalysisStatusEnum;
          result.analysisStatus = valueDes;
          break;
        case r'historical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.historical = valueDes;
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
  JournalEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JournalEntryBuilder();
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

class JournalEntryAnalysisStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const JournalEntryAnalysisStatusEnum pending = _$journalEntryAnalysisStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'queued')
  static const JournalEntryAnalysisStatusEnum queued = _$journalEntryAnalysisStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'succeeded')
  static const JournalEntryAnalysisStatusEnum succeeded = _$journalEntryAnalysisStatusEnum_succeeded;
  @BuiltValueEnumConst(wireName: r'failed')
  static const JournalEntryAnalysisStatusEnum failed = _$journalEntryAnalysisStatusEnum_failed;

  static Serializer<JournalEntryAnalysisStatusEnum> get serializer => _$journalEntryAnalysisStatusEnumSerializer;

  const JournalEntryAnalysisStatusEnum._(String name): super(name);

  static BuiltSet<JournalEntryAnalysisStatusEnum> get values => _$journalEntryAnalysisStatusEnumValues;
  static JournalEntryAnalysisStatusEnum valueOf(String name) => _$journalEntryAnalysisStatusEnumValueOf(name);
}

