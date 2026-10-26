//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_in_request.g.dart';

/// CheckInRequest
///
/// Properties:
/// * [clientId] 
/// * [clientCreatedAt] 
/// * [mood] 
/// * [feelingWords] 
/// * [bodySignal] 
/// * [taskReflection] 
@BuiltValue()
abstract class CheckInRequest implements Built<CheckInRequest, CheckInRequestBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime get clientCreatedAt;

  @BuiltValueField(wireName: r'mood')
  int get mood;

  @BuiltValueField(wireName: r'feelingWords')
  BuiltList<String> get feelingWords;

  @BuiltValueField(wireName: r'bodySignal')
  String? get bodySignal;

  @BuiltValueField(wireName: r'taskReflection')
  String? get taskReflection;

  CheckInRequest._();

  factory CheckInRequest([void updates(CheckInRequestBuilder b)]) = _$CheckInRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckInRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckInRequest> get serializer => _$CheckInRequestSerializer();
}

class _$CheckInRequestSerializer implements PrimitiveSerializer<CheckInRequest> {
  @override
  final Iterable<Type> types = const [CheckInRequest, _$CheckInRequest];

  @override
  final String wireName = r'CheckInRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckInRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'clientCreatedAt';
    yield serializers.serialize(
      object.clientCreatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'mood';
    yield serializers.serialize(
      object.mood,
      specifiedType: const FullType(int),
    );
    yield r'feelingWords';
    yield serializers.serialize(
      object.feelingWords,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.bodySignal != null) {
      yield r'bodySignal';
      yield serializers.serialize(
        object.bodySignal,
        specifiedType: const FullType(String),
      );
    }
    if (object.taskReflection != null) {
      yield r'taskReflection';
      yield serializers.serialize(
        object.taskReflection,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckInRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckInRequestBuilder result,
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
        case r'mood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mood = valueDes;
          break;
        case r'feelingWords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.feelingWords.replace(valueDes);
          break;
        case r'bodySignal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bodySignal = valueDes;
          break;
        case r'taskReflection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.taskReflection = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckInRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckInRequestBuilder();
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

