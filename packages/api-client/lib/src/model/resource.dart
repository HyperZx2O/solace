//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource.g.dart';

/// Resource
///
/// Properties:
/// * [name] 
/// * [number] 
/// * [hours] 
/// * [lastVerifiedAt] 
/// * [isEmergency] 
@BuiltValue()
abstract class Resource implements Built<Resource, ResourceBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'number')
  String get number;

  @BuiltValueField(wireName: r'hours')
  String get hours;

  @BuiltValueField(wireName: r'lastVerifiedAt')
  DateTime get lastVerifiedAt;

  @BuiltValueField(wireName: r'isEmergency')
  bool get isEmergency;

  Resource._();

  factory Resource([void updates(ResourceBuilder b)]) = _$Resource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Resource> get serializer => _$ResourceSerializer();
}

class _$ResourceSerializer implements PrimitiveSerializer<Resource> {
  @override
  final Iterable<Type> types = const [Resource, _$Resource];

  @override
  final String wireName = r'Resource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Resource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(String),
    );
    yield r'hours';
    yield serializers.serialize(
      object.hours,
      specifiedType: const FullType(String),
    );
    yield r'lastVerifiedAt';
    yield serializers.serialize(
      object.lastVerifiedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'isEmergency';
    yield serializers.serialize(
      object.isEmergency,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Resource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'hours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hours = valueDes;
          break;
        case r'lastVerifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastVerifiedAt = valueDes;
          break;
        case r'isEmergency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isEmergency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Resource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceBuilder();
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

