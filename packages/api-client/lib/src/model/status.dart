//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:solace_api/src/model/restriction_level.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status.g.dart';

/// Status
///
/// Properties:
/// * [restrictionLevel] 
/// * [copyKey] 
/// * [invitePending] 
/// * [monitoringOn] 
@BuiltValue()
abstract class Status implements Built<Status, StatusBuilder> {
  @BuiltValueField(wireName: r'restrictionLevel')
  RestrictionLevel get restrictionLevel;
  // enum restrictionLevelEnum {  none,  level1,  level2,  level3,  };

  @BuiltValueField(wireName: r'copyKey')
  String get copyKey;

  @BuiltValueField(wireName: r'invitePending')
  bool? get invitePending;

  @BuiltValueField(wireName: r'monitoringOn')
  bool? get monitoringOn;

  Status._();

  factory Status([void updates(StatusBuilder b)]) = _$Status;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Status> get serializer => _$StatusSerializer();
}

class _$StatusSerializer implements PrimitiveSerializer<Status> {
  @override
  final Iterable<Type> types = const [Status, _$Status];

  @override
  final String wireName = r'Status';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Status object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'restrictionLevel';
    yield serializers.serialize(
      object.restrictionLevel,
      specifiedType: const FullType(RestrictionLevel),
    );
    yield r'copyKey';
    yield serializers.serialize(
      object.copyKey,
      specifiedType: const FullType(String),
    );
    if (object.invitePending != null) {
      yield r'invitePending';
      yield serializers.serialize(
        object.invitePending,
        specifiedType: const FullType(bool),
      );
    }
    if (object.monitoringOn != null) {
      yield r'monitoringOn';
      yield serializers.serialize(
        object.monitoringOn,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Status object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restrictionLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RestrictionLevel),
          ) as RestrictionLevel;
          result.restrictionLevel = valueDes;
          break;
        case r'copyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.copyKey = valueDes;
          break;
        case r'invitePending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.invitePending = valueDes;
          break;
        case r'monitoringOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.monitoringOn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Status deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusBuilder();
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

