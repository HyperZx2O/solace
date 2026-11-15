//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/journal_privacy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_journal_privacy_request.g.dart';

/// SetJournalPrivacyRequest
///
/// Properties:
/// * [privacy] 
@BuiltValue()
abstract class SetJournalPrivacyRequest implements Built<SetJournalPrivacyRequest, SetJournalPrivacyRequestBuilder> {
  @BuiltValueField(wireName: r'privacy')
  JournalPrivacy get privacy;
  // enum privacyEnum {  hidden_from_therapist,  progress_only,  full_access,  };

  SetJournalPrivacyRequest._();

  factory SetJournalPrivacyRequest([void updates(SetJournalPrivacyRequestBuilder b)]) = _$SetJournalPrivacyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetJournalPrivacyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetJournalPrivacyRequest> get serializer => _$SetJournalPrivacyRequestSerializer();
}

class _$SetJournalPrivacyRequestSerializer implements PrimitiveSerializer<SetJournalPrivacyRequest> {
  @override
  final Iterable<Type> types = const [SetJournalPrivacyRequest, _$SetJournalPrivacyRequest];

  @override
  final String wireName = r'SetJournalPrivacyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetJournalPrivacyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'privacy';
    yield serializers.serialize(
      object.privacy,
      specifiedType: const FullType(JournalPrivacy),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetJournalPrivacyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetJournalPrivacyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'privacy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JournalPrivacy),
          ) as JournalPrivacy;
          result.privacy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetJournalPrivacyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetJournalPrivacyRequestBuilder();
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

