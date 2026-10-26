//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'withdrawal_request.g.dart';

/// WithdrawalRequest
///
/// Properties:
/// * [id] 
/// * [status] 
/// * [expiresAt] 
@BuiltValue()
abstract class WithdrawalRequest implements Built<WithdrawalRequest, WithdrawalRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'status')
  WithdrawalRequestStatusEnum get status;
  // enum statusEnum {  pending,  confirmed,  cancelled,  expired,  };

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  WithdrawalRequest._();

  factory WithdrawalRequest([void updates(WithdrawalRequestBuilder b)]) = _$WithdrawalRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WithdrawalRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WithdrawalRequest> get serializer => _$WithdrawalRequestSerializer();
}

class _$WithdrawalRequestSerializer implements PrimitiveSerializer<WithdrawalRequest> {
  @override
  final Iterable<Type> types = const [WithdrawalRequest, _$WithdrawalRequest];

  @override
  final String wireName = r'WithdrawalRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WithdrawalRequest object, {
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
      specifiedType: const FullType(WithdrawalRequestStatusEnum),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WithdrawalRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WithdrawalRequestBuilder result,
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
            specifiedType: const FullType(WithdrawalRequestStatusEnum),
          ) as WithdrawalRequestStatusEnum;
          result.status = valueDes;
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
  WithdrawalRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WithdrawalRequestBuilder();
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

class WithdrawalRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const WithdrawalRequestStatusEnum pending = _$withdrawalRequestStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const WithdrawalRequestStatusEnum confirmed = _$withdrawalRequestStatusEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const WithdrawalRequestStatusEnum cancelled = _$withdrawalRequestStatusEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'expired')
  static const WithdrawalRequestStatusEnum expired = _$withdrawalRequestStatusEnum_expired;

  static Serializer<WithdrawalRequestStatusEnum> get serializer => _$withdrawalRequestStatusEnumSerializer;

  const WithdrawalRequestStatusEnum._(String name): super(name);

  static BuiltSet<WithdrawalRequestStatusEnum> get values => _$withdrawalRequestStatusEnumValues;
  static WithdrawalRequestStatusEnum valueOf(String name) => _$withdrawalRequestStatusEnumValueOf(name);
}

