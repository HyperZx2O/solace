//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'connect_by_code_request.g.dart';

/// ConnectByCodeRequest
///
/// Properties:
/// * [code] 
@BuiltValue()
abstract class ConnectByCodeRequest implements Built<ConnectByCodeRequest, ConnectByCodeRequestBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  ConnectByCodeRequest._();

  factory ConnectByCodeRequest([void updates(ConnectByCodeRequestBuilder b)]) = _$ConnectByCodeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConnectByCodeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConnectByCodeRequest> get serializer => _$ConnectByCodeRequestSerializer();
}

class _$ConnectByCodeRequestSerializer implements PrimitiveSerializer<ConnectByCodeRequest> {
  @override
  final Iterable<Type> types = const [ConnectByCodeRequest, _$ConnectByCodeRequest];

  @override
  final String wireName = r'ConnectByCodeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConnectByCodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConnectByCodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConnectByCodeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConnectByCodeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConnectByCodeRequestBuilder();
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

