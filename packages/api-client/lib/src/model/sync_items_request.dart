//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:between_api/src/model/sync_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sync_items_request.g.dart';

/// SyncItemsRequest
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class SyncItemsRequest implements Built<SyncItemsRequest, SyncItemsRequestBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SyncItem> get items;

  SyncItemsRequest._();

  factory SyncItemsRequest([void updates(SyncItemsRequestBuilder b)]) = _$SyncItemsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SyncItemsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SyncItemsRequest> get serializer => _$SyncItemsRequestSerializer();
}

class _$SyncItemsRequestSerializer implements PrimitiveSerializer<SyncItemsRequest> {
  @override
  final Iterable<Type> types = const [SyncItemsRequest, _$SyncItemsRequest];

  @override
  final String wireName = r'SyncItemsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SyncItemsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SyncItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SyncItemsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SyncItemsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SyncItem)]),
          ) as BuiltList<SyncItem>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SyncItemsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SyncItemsRequestBuilder();
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

