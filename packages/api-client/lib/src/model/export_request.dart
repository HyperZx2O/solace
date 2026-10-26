//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_request.g.dart';

/// ExportRequest
///
/// Properties:
/// * [id] 
/// * [status] 
/// * [requestedAt] 
/// * [completedAt] 
/// * [expiresAt] 
@BuiltValue()
abstract class ExportRequest implements Built<ExportRequest, ExportRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'status')
  ExportRequestStatusEnum get status;
  // enum statusEnum {  pending,  confirmed,  completed,  cancelled,  };

  @BuiltValueField(wireName: r'requestedAt')
  DateTime get requestedAt;

  @BuiltValueField(wireName: r'completedAt')
  DateTime? get completedAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  ExportRequest._();

  factory ExportRequest([void updates(ExportRequestBuilder b)]) = _$ExportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportRequest> get serializer => _$ExportRequestSerializer();
}

class _$ExportRequestSerializer implements PrimitiveSerializer<ExportRequest> {
  @override
  final Iterable<Type> types = const [ExportRequest, _$ExportRequest];

  @override
  final String wireName = r'ExportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportRequest object, {
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
      specifiedType: const FullType(ExportRequestStatusEnum),
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
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportRequestBuilder result,
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
            specifiedType: const FullType(ExportRequestStatusEnum),
          ) as ExportRequestStatusEnum;
          result.status = valueDes;
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
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportRequestBuilder();
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

class ExportRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const ExportRequestStatusEnum pending = _$exportRequestStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const ExportRequestStatusEnum confirmed = _$exportRequestStatusEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'completed')
  static const ExportRequestStatusEnum completed = _$exportRequestStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const ExportRequestStatusEnum cancelled = _$exportRequestStatusEnum_cancelled;

  static Serializer<ExportRequestStatusEnum> get serializer => _$exportRequestStatusEnumSerializer;

  const ExportRequestStatusEnum._(String name): super(name);

  static BuiltSet<ExportRequestStatusEnum> get values => _$exportRequestStatusEnumValues;
  static ExportRequestStatusEnum valueOf(String name) => _$exportRequestStatusEnumValueOf(name);
}

