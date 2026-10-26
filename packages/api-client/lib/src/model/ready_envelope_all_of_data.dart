//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/ready_envelope_all_of_data_checks.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ready_envelope_all_of_data.g.dart';

/// ReadyEnvelopeAllOfData
///
/// Properties:
/// * [status] 
/// * [checks] 
/// * [resourcesVerifiedAt] 
@BuiltValue()
abstract class ReadyEnvelopeAllOfData implements Built<ReadyEnvelopeAllOfData, ReadyEnvelopeAllOfDataBuilder> {
  @BuiltValueField(wireName: r'status')
  ReadyEnvelopeAllOfDataStatusEnum get status;
  // enum statusEnum {  ok,  };

  @BuiltValueField(wireName: r'checks')
  ReadyEnvelopeAllOfDataChecks get checks;

  @BuiltValueField(wireName: r'resourcesVerifiedAt')
  DateTime get resourcesVerifiedAt;

  ReadyEnvelopeAllOfData._();

  factory ReadyEnvelopeAllOfData([void updates(ReadyEnvelopeAllOfDataBuilder b)]) = _$ReadyEnvelopeAllOfData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadyEnvelopeAllOfDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadyEnvelopeAllOfData> get serializer => _$ReadyEnvelopeAllOfDataSerializer();
}

class _$ReadyEnvelopeAllOfDataSerializer implements PrimitiveSerializer<ReadyEnvelopeAllOfData> {
  @override
  final Iterable<Type> types = const [ReadyEnvelopeAllOfData, _$ReadyEnvelopeAllOfData];

  @override
  final String wireName = r'ReadyEnvelopeAllOfData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadyEnvelopeAllOfData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReadyEnvelopeAllOfDataStatusEnum),
    );
    yield r'checks';
    yield serializers.serialize(
      object.checks,
      specifiedType: const FullType(ReadyEnvelopeAllOfDataChecks),
    );
    yield r'resourcesVerifiedAt';
    yield serializers.serialize(
      object.resourcesVerifiedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadyEnvelopeAllOfData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadyEnvelopeAllOfDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReadyEnvelopeAllOfDataStatusEnum),
          ) as ReadyEnvelopeAllOfDataStatusEnum;
          result.status = valueDes;
          break;
        case r'checks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReadyEnvelopeAllOfDataChecks),
          ) as ReadyEnvelopeAllOfDataChecks;
          result.checks.replace(valueDes);
          break;
        case r'resourcesVerifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.resourcesVerifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadyEnvelopeAllOfData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadyEnvelopeAllOfDataBuilder();
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

class ReadyEnvelopeAllOfDataStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ok')
  static const ReadyEnvelopeAllOfDataStatusEnum ok = _$readyEnvelopeAllOfDataStatusEnum_ok;

  static Serializer<ReadyEnvelopeAllOfDataStatusEnum> get serializer => _$readyEnvelopeAllOfDataStatusEnumSerializer;

  const ReadyEnvelopeAllOfDataStatusEnum._(String name): super(name);

  static BuiltSet<ReadyEnvelopeAllOfDataStatusEnum> get values => _$readyEnvelopeAllOfDataStatusEnumValues;
  static ReadyEnvelopeAllOfDataStatusEnum valueOf(String name) => _$readyEnvelopeAllOfDataStatusEnumValueOf(name);
}

