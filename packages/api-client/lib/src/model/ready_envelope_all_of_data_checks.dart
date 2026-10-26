//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ready_envelope_all_of_data_checks.g.dart';

/// ReadyEnvelopeAllOfDataChecks
///
/// Properties:
/// * [postgres] 
/// * [redis] 
@BuiltValue()
abstract class ReadyEnvelopeAllOfDataChecks implements Built<ReadyEnvelopeAllOfDataChecks, ReadyEnvelopeAllOfDataChecksBuilder> {
  @BuiltValueField(wireName: r'postgres')
  ReadyEnvelopeAllOfDataChecksPostgresEnum get postgres;
  // enum postgresEnum {  ok,  };

  @BuiltValueField(wireName: r'redis')
  ReadyEnvelopeAllOfDataChecksRedisEnum get redis;
  // enum redisEnum {  ok,  };

  ReadyEnvelopeAllOfDataChecks._();

  factory ReadyEnvelopeAllOfDataChecks([void updates(ReadyEnvelopeAllOfDataChecksBuilder b)]) = _$ReadyEnvelopeAllOfDataChecks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadyEnvelopeAllOfDataChecksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadyEnvelopeAllOfDataChecks> get serializer => _$ReadyEnvelopeAllOfDataChecksSerializer();
}

class _$ReadyEnvelopeAllOfDataChecksSerializer implements PrimitiveSerializer<ReadyEnvelopeAllOfDataChecks> {
  @override
  final Iterable<Type> types = const [ReadyEnvelopeAllOfDataChecks, _$ReadyEnvelopeAllOfDataChecks];

  @override
  final String wireName = r'ReadyEnvelopeAllOfDataChecks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadyEnvelopeAllOfDataChecks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'postgres';
    yield serializers.serialize(
      object.postgres,
      specifiedType: const FullType(ReadyEnvelopeAllOfDataChecksPostgresEnum),
    );
    yield r'redis';
    yield serializers.serialize(
      object.redis,
      specifiedType: const FullType(ReadyEnvelopeAllOfDataChecksRedisEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadyEnvelopeAllOfDataChecks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadyEnvelopeAllOfDataChecksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'postgres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReadyEnvelopeAllOfDataChecksPostgresEnum),
          ) as ReadyEnvelopeAllOfDataChecksPostgresEnum;
          result.postgres = valueDes;
          break;
        case r'redis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReadyEnvelopeAllOfDataChecksRedisEnum),
          ) as ReadyEnvelopeAllOfDataChecksRedisEnum;
          result.redis = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadyEnvelopeAllOfDataChecks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadyEnvelopeAllOfDataChecksBuilder();
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

class ReadyEnvelopeAllOfDataChecksPostgresEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ok')
  static const ReadyEnvelopeAllOfDataChecksPostgresEnum ok = _$readyEnvelopeAllOfDataChecksPostgresEnum_ok;

  static Serializer<ReadyEnvelopeAllOfDataChecksPostgresEnum> get serializer => _$readyEnvelopeAllOfDataChecksPostgresEnumSerializer;

  const ReadyEnvelopeAllOfDataChecksPostgresEnum._(String name): super(name);

  static BuiltSet<ReadyEnvelopeAllOfDataChecksPostgresEnum> get values => _$readyEnvelopeAllOfDataChecksPostgresEnumValues;
  static ReadyEnvelopeAllOfDataChecksPostgresEnum valueOf(String name) => _$readyEnvelopeAllOfDataChecksPostgresEnumValueOf(name);
}

class ReadyEnvelopeAllOfDataChecksRedisEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ok')
  static const ReadyEnvelopeAllOfDataChecksRedisEnum ok = _$readyEnvelopeAllOfDataChecksRedisEnum_ok;

  static Serializer<ReadyEnvelopeAllOfDataChecksRedisEnum> get serializer => _$readyEnvelopeAllOfDataChecksRedisEnumSerializer;

  const ReadyEnvelopeAllOfDataChecksRedisEnum._(String name): super(name);

  static BuiltSet<ReadyEnvelopeAllOfDataChecksRedisEnum> get values => _$readyEnvelopeAllOfDataChecksRedisEnumValues;
  static ReadyEnvelopeAllOfDataChecksRedisEnum valueOf(String name) => _$readyEnvelopeAllOfDataChecksRedisEnumValueOf(name);
}

