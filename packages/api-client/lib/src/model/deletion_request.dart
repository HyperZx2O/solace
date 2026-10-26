//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deletion_request.g.dart';

/// DeletionRequest
///
/// Properties:
/// * [id] 
/// * [status] 
/// * [referenceNumber] 
/// * [requestedAt] 
/// * [completedAt] 
@BuiltValue()
abstract class DeletionRequest implements Built<DeletionRequest, DeletionRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'status')
  DeletionRequestStatusEnum get status;
  // enum statusEnum {  pending,  confirmed,  completed,  cancelled,  };

  @BuiltValueField(wireName: r'referenceNumber')
  String get referenceNumber;

  @BuiltValueField(wireName: r'requestedAt')
  DateTime get requestedAt;

  @BuiltValueField(wireName: r'completedAt')
  DateTime? get completedAt;

  DeletionRequest._();

  factory DeletionRequest([void updates(DeletionRequestBuilder b)]) = _$DeletionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeletionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeletionRequest> get serializer => _$DeletionRequestSerializer();
}

class _$DeletionRequestSerializer implements PrimitiveSerializer<DeletionRequest> {
  @override
  final Iterable<Type> types = const [DeletionRequest, _$DeletionRequest];

  @override
  final String wireName = r'DeletionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeletionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DeletionRequestStatusEnum),
    );
    yield r'referenceNumber';
    yield serializers.serialize(
      object.referenceNumber,
      specifiedType: const FullType(String),
    );
    yield r'requestedAt';
    yield serializers.serialize(
      object.requestedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.completedAt != null) {
      yield r'completedAt';
      yield serializers.serialize(
        object.completedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeletionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeletionRequestBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeletionRequestStatusEnum),
          ) as DeletionRequestStatusEnum;
          result.status = valueDes;
          break;
        case r'referenceNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.referenceNumber = valueDes;
          break;
        case r'requestedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.requestedAt = valueDes;
          break;
        case r'completedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.completedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeletionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletionRequestBuilder();
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

class DeletionRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const DeletionRequestStatusEnum pending = _$deletionRequestStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const DeletionRequestStatusEnum confirmed = _$deletionRequestStatusEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'completed')
  static const DeletionRequestStatusEnum completed = _$deletionRequestStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const DeletionRequestStatusEnum cancelled = _$deletionRequestStatusEnum_cancelled;

  static Serializer<DeletionRequestStatusEnum> get serializer => _$deletionRequestStatusEnumSerializer;

  const DeletionRequestStatusEnum._(String name): super(name);

  static BuiltSet<DeletionRequestStatusEnum> get values => _$deletionRequestStatusEnumValues;
  static DeletionRequestStatusEnum valueOf(String name) => _$deletionRequestStatusEnumValueOf(name);
}

