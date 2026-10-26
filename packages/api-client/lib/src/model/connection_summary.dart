//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:between_api/src/model/connection_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'connection_summary.g.dart';

/// ConnectionSummary
///
/// Properties:
/// * [id] 
/// * [state] 
/// * [therapistDisplayName] 
/// * [createdAt] 
/// * [confirmedAt] 
@BuiltValue()
abstract class ConnectionSummary implements Built<ConnectionSummary, ConnectionSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'state')
  ConnectionState get state;
  // enum stateEnum {  pending_therapist,  awaiting_patient_confirmation,  active,  ended,  flagged_wrong,  };

  @BuiltValueField(wireName: r'therapistDisplayName')
  String? get therapistDisplayName;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'confirmedAt')
  DateTime? get confirmedAt;

  ConnectionSummary._();

  factory ConnectionSummary([void updates(ConnectionSummaryBuilder b)]) = _$ConnectionSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConnectionSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConnectionSummary> get serializer => _$ConnectionSummarySerializer();
}

class _$ConnectionSummarySerializer implements PrimitiveSerializer<ConnectionSummary> {
  @override
  final Iterable<Type> types = const [ConnectionSummary, _$ConnectionSummary];

  @override
  final String wireName = r'ConnectionSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConnectionSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ConnectionState),
    );
    if (object.therapistDisplayName != null) {
      yield r'therapistDisplayName';
      yield serializers.serialize(
        object.therapistDisplayName,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.confirmedAt != null) {
      yield r'confirmedAt';
      yield serializers.serialize(
        object.confirmedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConnectionSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConnectionSummaryBuilder result,
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
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConnectionState),
          ) as ConnectionState;
          result.state = valueDes;
          break;
        case r'therapistDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.therapistDisplayName = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'confirmedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.confirmedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConnectionSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConnectionSummaryBuilder();
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

