//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pause_processing_request.g.dart';

/// PauseProcessingRequest
///
/// Properties:
/// * [paused] 
@BuiltValue()
abstract class PauseProcessingRequest implements Built<PauseProcessingRequest, PauseProcessingRequestBuilder> {
  @BuiltValueField(wireName: r'paused')
  bool get paused;

  PauseProcessingRequest._();

  factory PauseProcessingRequest([void updates(PauseProcessingRequestBuilder b)]) = _$PauseProcessingRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PauseProcessingRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PauseProcessingRequest> get serializer => _$PauseProcessingRequestSerializer();
}

class _$PauseProcessingRequestSerializer implements PrimitiveSerializer<PauseProcessingRequest> {
  @override
  final Iterable<Type> types = const [PauseProcessingRequest, _$PauseProcessingRequest];

  @override
  final String wireName = r'PauseProcessingRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PauseProcessingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paused';
    yield serializers.serialize(
      object.paused,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PauseProcessingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PauseProcessingRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paused = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PauseProcessingRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PauseProcessingRequestBuilder();
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

