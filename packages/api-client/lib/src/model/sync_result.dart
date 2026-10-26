//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sync_result.g.dart';

/// SyncResult
///
/// Properties:
/// * [clientId] 
/// * [outcome] 
/// * [id] 
/// * [error] 
@BuiltValue()
abstract class SyncResult implements Built<SyncResult, SyncResultBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'outcome')
  SyncResultOutcomeEnum get outcome;
  // enum outcomeEnum {  accepted,  duplicate,  historical_flagged,  rejected,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'error')
  String? get error;

  SyncResult._();

  factory SyncResult([void updates(SyncResultBuilder b)]) = _$SyncResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SyncResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SyncResult> get serializer => _$SyncResultSerializer();
}

class _$SyncResultSerializer implements PrimitiveSerializer<SyncResult> {
  @override
  final Iterable<Type> types = const [SyncResult, _$SyncResult];

  @override
  final String wireName = r'SyncResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SyncResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'outcome';
    yield serializers.serialize(
      object.outcome,
      specifiedType: const FullType(SyncResultOutcomeEnum),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SyncResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SyncResultBuilder result,
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
        case r'outcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SyncResultOutcomeEnum),
          ) as SyncResultOutcomeEnum;
          result.outcome = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SyncResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SyncResultBuilder();
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

class SyncResultOutcomeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'accepted')
  static const SyncResultOutcomeEnum accepted = _$syncResultOutcomeEnum_accepted;
  @BuiltValueEnumConst(wireName: r'duplicate')
  static const SyncResultOutcomeEnum duplicate = _$syncResultOutcomeEnum_duplicate;
  @BuiltValueEnumConst(wireName: r'historical_flagged')
  static const SyncResultOutcomeEnum historicalFlagged = _$syncResultOutcomeEnum_historicalFlagged;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const SyncResultOutcomeEnum rejected = _$syncResultOutcomeEnum_rejected;

  static Serializer<SyncResultOutcomeEnum> get serializer => _$syncResultOutcomeEnumSerializer;

  const SyncResultOutcomeEnum._(String name): super(name);

  static BuiltSet<SyncResultOutcomeEnum> get values => _$syncResultOutcomeEnumValues;
  static SyncResultOutcomeEnum valueOf(String name) => _$syncResultOutcomeEnumValueOf(name);
}

