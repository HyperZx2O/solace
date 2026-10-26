//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_log_entry.g.dart';

/// AccessLogEntry
///
/// Properties:
/// * [id] 
/// * [viewerRole] 
/// * [dataType] 
/// * [at] 
@BuiltValue()
abstract class AccessLogEntry implements Built<AccessLogEntry, AccessLogEntryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'viewerRole')
  AccessLogEntryViewerRoleEnum get viewerRole;
  // enum viewerRoleEnum {  therapist,  safety_team,  };

  @BuiltValueField(wireName: r'dataType')
  String get dataType;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  AccessLogEntry._();

  factory AccessLogEntry([void updates(AccessLogEntryBuilder b)]) = _$AccessLogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessLogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessLogEntry> get serializer => _$AccessLogEntrySerializer();
}

class _$AccessLogEntrySerializer implements PrimitiveSerializer<AccessLogEntry> {
  @override
  final Iterable<Type> types = const [AccessLogEntry, _$AccessLogEntry];

  @override
  final String wireName = r'AccessLogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessLogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'viewerRole';
    yield serializers.serialize(
      object.viewerRole,
      specifiedType: const FullType(AccessLogEntryViewerRoleEnum),
    );
    yield r'dataType';
    yield serializers.serialize(
      object.dataType,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessLogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccessLogEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'viewerRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccessLogEntryViewerRoleEnum),
          ) as AccessLogEntryViewerRoleEnum;
          result.viewerRole = valueDes;
          break;
        case r'dataType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dataType = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessLogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessLogEntryBuilder();
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

class AccessLogEntryViewerRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'therapist')
  static const AccessLogEntryViewerRoleEnum therapist = _$accessLogEntryViewerRoleEnum_therapist;
  @BuiltValueEnumConst(wireName: r'safety_team')
  static const AccessLogEntryViewerRoleEnum safetyTeam = _$accessLogEntryViewerRoleEnum_safetyTeam;

  static Serializer<AccessLogEntryViewerRoleEnum> get serializer => _$accessLogEntryViewerRoleEnumSerializer;

  const AccessLogEntryViewerRoleEnum._(String name): super(name);

  static BuiltSet<AccessLogEntryViewerRoleEnum> get values => _$accessLogEntryViewerRoleEnumValues;
  static AccessLogEntryViewerRoleEnum valueOf(String name) => _$accessLogEntryViewerRoleEnumValueOf(name);
}

