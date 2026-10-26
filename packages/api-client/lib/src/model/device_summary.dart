//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_summary.g.dart';

/// DeviceSummary
///
/// Properties:
/// * [id] 
/// * [platform] 
/// * [lastSeenAt] 
@BuiltValue()
abstract class DeviceSummary implements Built<DeviceSummary, DeviceSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'platform')
  DeviceSummaryPlatformEnum get platform;
  // enum platformEnum {  android,  ios,  };

  @BuiltValueField(wireName: r'lastSeenAt')
  DateTime get lastSeenAt;

  DeviceSummary._();

  factory DeviceSummary([void updates(DeviceSummaryBuilder b)]) = _$DeviceSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceSummary> get serializer => _$DeviceSummarySerializer();
}

class _$DeviceSummarySerializer implements PrimitiveSerializer<DeviceSummary> {
  @override
  final Iterable<Type> types = const [DeviceSummary, _$DeviceSummary];

  @override
  final String wireName = r'DeviceSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(DeviceSummaryPlatformEnum),
    );
    yield r'lastSeenAt';
    yield serializers.serialize(
      object.lastSeenAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceSummaryBuilder result,
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
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceSummaryPlatformEnum),
          ) as DeviceSummaryPlatformEnum;
          result.platform = valueDes;
          break;
        case r'lastSeenAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastSeenAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceSummaryBuilder();
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

class DeviceSummaryPlatformEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'android')
  static const DeviceSummaryPlatformEnum android = _$deviceSummaryPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'ios')
  static const DeviceSummaryPlatformEnum ios = _$deviceSummaryPlatformEnum_ios;

  static Serializer<DeviceSummaryPlatformEnum> get serializer => _$deviceSummaryPlatformEnumSerializer;

  const DeviceSummaryPlatformEnum._(String name): super(name);

  static BuiltSet<DeviceSummaryPlatformEnum> get values => _$deviceSummaryPlatformEnumValues;
  static DeviceSummaryPlatformEnum valueOf(String name) => _$deviceSummaryPlatformEnumValueOf(name);
}

