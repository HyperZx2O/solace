//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer_tier2_consent_request.g.dart';

/// AnswerTier2ConsentRequest
///
/// Properties:
/// * [granted] 
@BuiltValue()
abstract class AnswerTier2ConsentRequest implements Built<AnswerTier2ConsentRequest, AnswerTier2ConsentRequestBuilder> {
  @BuiltValueField(wireName: r'granted')
  bool get granted;

  AnswerTier2ConsentRequest._();

  factory AnswerTier2ConsentRequest([void updates(AnswerTier2ConsentRequestBuilder b)]) = _$AnswerTier2ConsentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnswerTier2ConsentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnswerTier2ConsentRequest> get serializer => _$AnswerTier2ConsentRequestSerializer();
}

class _$AnswerTier2ConsentRequestSerializer implements PrimitiveSerializer<AnswerTier2ConsentRequest> {
  @override
  final Iterable<Type> types = const [AnswerTier2ConsentRequest, _$AnswerTier2ConsentRequest];

  @override
  final String wireName = r'AnswerTier2ConsentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnswerTier2ConsentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'granted';
    yield serializers.serialize(
      object.granted,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnswerTier2ConsentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnswerTier2ConsentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'granted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.granted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnswerTier2ConsentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnswerTier2ConsentRequestBuilder();
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

