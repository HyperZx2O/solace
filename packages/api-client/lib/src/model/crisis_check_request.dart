//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'crisis_check_request.g.dart';

/// CrisisCheckRequest
///
/// Properties:
/// * [clientId] 
/// * [clientCreatedAt] 
/// * [source_] 
/// * [text] 
/// * [entryId] 
@BuiltValue()
abstract class CrisisCheckRequest implements Built<CrisisCheckRequest, CrisisCheckRequestBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime get clientCreatedAt;

  @BuiltValueField(wireName: r'source')
  CrisisCheckRequestSource_Enum get source_;
  // enum source_Enum {  journal,  checkin,  task_reflection,  };

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'entryId')
  String? get entryId;

  CrisisCheckRequest._();

  factory CrisisCheckRequest([void updates(CrisisCheckRequestBuilder b)]) = _$CrisisCheckRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CrisisCheckRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CrisisCheckRequest> get serializer => _$CrisisCheckRequestSerializer();
}

class _$CrisisCheckRequestSerializer implements PrimitiveSerializer<CrisisCheckRequest> {
  @override
  final Iterable<Type> types = const [CrisisCheckRequest, _$CrisisCheckRequest];

  @override
  final String wireName = r'CrisisCheckRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CrisisCheckRequest object, {
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
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(CrisisCheckRequestSource_Enum),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.entryId != null) {
      yield r'entryId';
      yield serializers.serialize(
        object.entryId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CrisisCheckRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CrisisCheckRequestBuilder result,
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
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CrisisCheckRequestSource_Enum),
          ) as CrisisCheckRequestSource_Enum;
          result.source_ = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'entryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entryId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CrisisCheckRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CrisisCheckRequestBuilder();
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

class CrisisCheckRequestSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'journal')
  static const CrisisCheckRequestSource_Enum journal = _$crisisCheckRequestSourceEnum_journal;
  @BuiltValueEnumConst(wireName: r'checkin')
  static const CrisisCheckRequestSource_Enum checkin = _$crisisCheckRequestSourceEnum_checkin;
  @BuiltValueEnumConst(wireName: r'task_reflection')
  static const CrisisCheckRequestSource_Enum taskReflection = _$crisisCheckRequestSourceEnum_taskReflection;

  static Serializer<CrisisCheckRequestSource_Enum> get serializer => _$crisisCheckRequestSourceEnumSerializer;

  const CrisisCheckRequestSource_Enum._(String name): super(name);

  static BuiltSet<CrisisCheckRequestSource_Enum> get values => _$crisisCheckRequestSourceEnumValues;
  static CrisisCheckRequestSource_Enum valueOf(String name) => _$crisisCheckRequestSourceEnumValueOf(name);
}

