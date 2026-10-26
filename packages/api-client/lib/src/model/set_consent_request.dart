//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_consent_request.g.dart';

/// SetConsentRequest
///
/// Properties:
/// * [granted] 
/// * [appVersion] 
@BuiltValue()
abstract class SetConsentRequest implements Built<SetConsentRequest, SetConsentRequestBuilder> {
  @BuiltValueField(wireName: r'granted')
  bool get granted;

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  SetConsentRequest._();

  factory SetConsentRequest([void updates(SetConsentRequestBuilder b)]) = _$SetConsentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetConsentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetConsentRequest> get serializer => _$SetConsentRequestSerializer();
}

class _$SetConsentRequestSerializer implements PrimitiveSerializer<SetConsentRequest> {
  @override
  final Iterable<Type> types = const [SetConsentRequest, _$SetConsentRequest];

  @override
  final String wireName = r'SetConsentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetConsentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'granted';
    yield serializers.serialize(
      object.granted,
      specifiedType: const FullType(bool),
    );
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SetConsentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetConsentRequestBuilder result,
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
        case r'appVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetConsentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetConsentRequestBuilder();
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

