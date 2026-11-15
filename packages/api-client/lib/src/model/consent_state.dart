//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/consent_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consent_state.g.dart';

/// ConsentState
///
/// Properties:
/// * [item] 
/// * [granted] 
/// * [source_] 
/// * [appVersion] 
/// * [recordedAt] 
@BuiltValue()
abstract class ConsentState implements Built<ConsentState, ConsentStateBuilder> {
  @BuiltValueField(wireName: r'item')
  ConsentItem get item;
  // enum itemEnum {  mood_task_data,  journal_storage,  journal_ai_analysis,  crisis_detection,  tier3_therapist_alert,  therapist_data_sharing,  };

  @BuiltValueField(wireName: r'granted')
  bool get granted;

  @BuiltValueField(wireName: r'source')
  ConsentStateSource_Enum get source_;
  // enum source_Enum {  onboarding,  settings,  withdrawal_confirmed,  };

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'recordedAt')
  DateTime get recordedAt;

  ConsentState._();

  factory ConsentState([void updates(ConsentStateBuilder b)]) = _$ConsentState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsentStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsentState> get serializer => _$ConsentStateSerializer();
}

class _$ConsentStateSerializer implements PrimitiveSerializer<ConsentState> {
  @override
  final Iterable<Type> types = const [ConsentState, _$ConsentState];

  @override
  final String wireName = r'ConsentState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsentState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'item';
    yield serializers.serialize(
      object.item,
      specifiedType: const FullType(ConsentItem),
    );
    yield r'granted';
    yield serializers.serialize(
      object.granted,
      specifiedType: const FullType(bool),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(ConsentStateSource_Enum),
    );
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'recordedAt';
    yield serializers.serialize(
      object.recordedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsentState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsentStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConsentItem),
          ) as ConsentItem;
          result.item = valueDes;
          break;
        case r'granted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.granted = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConsentStateSource_Enum),
          ) as ConsentStateSource_Enum;
          result.source_ = valueDes;
          break;
        case r'appVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appVersion = valueDes;
          break;
        case r'recordedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.recordedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsentState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsentStateBuilder();
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

class ConsentStateSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'onboarding')
  static const ConsentStateSource_Enum onboarding = _$consentStateSourceEnum_onboarding;
  @BuiltValueEnumConst(wireName: r'settings')
  static const ConsentStateSource_Enum settings = _$consentStateSourceEnum_settings;
  @BuiltValueEnumConst(wireName: r'withdrawal_confirmed')
  static const ConsentStateSource_Enum withdrawalConfirmed = _$consentStateSourceEnum_withdrawalConfirmed;

  static Serializer<ConsentStateSource_Enum> get serializer => _$consentStateSourceEnumSerializer;

  const ConsentStateSource_Enum._(String name): super(name);

  static BuiltSet<ConsentStateSource_Enum> get values => _$consentStateSourceEnumValues;
  static ConsentStateSource_Enum valueOf(String name) => _$consentStateSourceEnumValueOf(name);
}

