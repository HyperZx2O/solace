//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_invite_request.g.dart';

/// CreateInviteRequest
///
/// Properties:
/// * [therapistEmail] 
/// * [patientFirstName] 
@BuiltValue()
abstract class CreateInviteRequest implements Built<CreateInviteRequest, CreateInviteRequestBuilder> {
  @BuiltValueField(wireName: r'therapistEmail')
  String get therapistEmail;

  @BuiltValueField(wireName: r'patientFirstName')
  String get patientFirstName;

  CreateInviteRequest._();

  factory CreateInviteRequest([void updates(CreateInviteRequestBuilder b)]) = _$CreateInviteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInviteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInviteRequest> get serializer => _$CreateInviteRequestSerializer();
}

class _$CreateInviteRequestSerializer implements PrimitiveSerializer<CreateInviteRequest> {
  @override
  final Iterable<Type> types = const [CreateInviteRequest, _$CreateInviteRequest];

  @override
  final String wireName = r'CreateInviteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInviteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'therapistEmail';
    yield serializers.serialize(
      object.therapistEmail,
      specifiedType: const FullType(String),
    );
    yield r'patientFirstName';
    yield serializers.serialize(
      object.patientFirstName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateInviteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateInviteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'therapistEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.therapistEmail = valueDes;
          break;
        case r'patientFirstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.patientFirstName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateInviteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInviteRequestBuilder();
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

