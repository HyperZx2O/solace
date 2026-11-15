//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/sync_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sync_items200_response_all_of_data.g.dart';

/// SyncItems200ResponseAllOfData
///
/// Properties:
/// * [results] 
@BuiltValue()
abstract class SyncItems200ResponseAllOfData implements Built<SyncItems200ResponseAllOfData, SyncItems200ResponseAllOfDataBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<SyncResult> get results;

  SyncItems200ResponseAllOfData._();

  factory SyncItems200ResponseAllOfData([void updates(SyncItems200ResponseAllOfDataBuilder b)]) = _$SyncItems200ResponseAllOfData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SyncItems200ResponseAllOfDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SyncItems200ResponseAllOfData> get serializer => _$SyncItems200ResponseAllOfDataSerializer();
}

class _$SyncItems200ResponseAllOfDataSerializer implements PrimitiveSerializer<SyncItems200ResponseAllOfData> {
  @override
  final Iterable<Type> types = const [SyncItems200ResponseAllOfData, _$SyncItems200ResponseAllOfData];

  @override
  final String wireName = r'SyncItems200ResponseAllOfData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SyncItems200ResponseAllOfData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(SyncResult)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SyncItems200ResponseAllOfData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SyncItems200ResponseAllOfDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SyncResult)]),
          ) as BuiltList<SyncResult>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SyncItems200ResponseAllOfData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SyncItems200ResponseAllOfDataBuilder();
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

