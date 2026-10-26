//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'self_initiated_crisis_request.g.dart';

/// SelfInitiatedCrisisRequest
///
/// Properties:
/// * [clientId] 
/// * [clientCreatedAt] 
@BuiltValue()
abstract class SelfInitiatedCrisisRequest implements Built<SelfInitiatedCrisisRequest, SelfInitiatedCrisisRequestBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime? get clientCreatedAt;

  SelfInitiatedCrisisRequest._();

  factory SelfInitiatedCrisisRequest([void updates(SelfInitiatedCrisisRequestBuilder b)]) = _$SelfInitiatedCrisisRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SelfInitiatedCrisisRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SelfInitiatedCrisisRequest> get serializer => _$SelfInitiatedCrisisRequestSerializer();
}

class _$SelfInitiatedCrisisRequestSerializer implements PrimitiveSerializer<SelfInitiatedCrisisRequest> {
  @override
  final Iterable<Type> types = const [SelfInitiatedCrisisRequest, _$SelfInitiatedCrisisRequest];

  @override
  final String wireName = r'SelfInitiatedCrisisRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelfInitiatedCrisisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    if (object.clientCreatedAt != null) {
      yield r'clientCreatedAt';
      yield serializers.serialize(
        object.clientCreatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SelfInitiatedCrisisRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SelfInitiatedCrisisRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SelfInitiatedCrisisRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelfInitiatedCrisisRequestBuilder();
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

