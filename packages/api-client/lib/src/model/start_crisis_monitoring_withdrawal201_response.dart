//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:solace_api/src/model/withdrawal_request.dart';
import 'package:solace_api/src/model/success_envelope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_crisis_monitoring_withdrawal201_response.g.dart';

/// StartCrisisMonitoringWithdrawal201Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [timestamp] 
/// * [error] 
@BuiltValue()
abstract class StartCrisisMonitoringWithdrawal201Response implements SuccessEnvelope, Built<StartCrisisMonitoringWithdrawal201Response, StartCrisisMonitoringWithdrawal201ResponseBuilder> {
  StartCrisisMonitoringWithdrawal201Response._();

  factory StartCrisisMonitoringWithdrawal201Response([void updates(StartCrisisMonitoringWithdrawal201ResponseBuilder b)]) = _$StartCrisisMonitoringWithdrawal201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartCrisisMonitoringWithdrawal201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartCrisisMonitoringWithdrawal201Response> get serializer => _$StartCrisisMonitoringWithdrawal201ResponseSerializer();
}

class _$StartCrisisMonitoringWithdrawal201ResponseSerializer implements PrimitiveSerializer<StartCrisisMonitoringWithdrawal201Response> {
  @override
  final Iterable<Type> types = const [StartCrisisMonitoringWithdrawal201Response, _$StartCrisisMonitoringWithdrawal201Response];

  @override
  final String wireName = r'StartCrisisMonitoringWithdrawal201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartCrisisMonitoringWithdrawal201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'error';
    yield object.error == null ? null : serializers.serialize(
      object.error,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(SuccessEnvelopeSuccessEnum),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartCrisisMonitoringWithdrawal201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartCrisisMonitoringWithdrawal201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SuccessEnvelopeSuccessEnum),
          ) as SuccessEnvelopeSuccessEnum;
          result.success = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartCrisisMonitoringWithdrawal201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartCrisisMonitoringWithdrawal201ResponseBuilder();
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

class StartCrisisMonitoringWithdrawal201ResponseSuccessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const StartCrisisMonitoringWithdrawal201ResponseSuccessEnum true_ = _$startCrisisMonitoringWithdrawal201ResponseSuccessEnum_true_;

  static Serializer<StartCrisisMonitoringWithdrawal201ResponseSuccessEnum> get serializer => _$startCrisisMonitoringWithdrawal201ResponseSuccessEnumSerializer;

  const StartCrisisMonitoringWithdrawal201ResponseSuccessEnum._(String name): super(name);

  static BuiltSet<StartCrisisMonitoringWithdrawal201ResponseSuccessEnum> get values => _$startCrisisMonitoringWithdrawal201ResponseSuccessEnumValues;
  static StartCrisisMonitoringWithdrawal201ResponseSuccessEnum valueOf(String name) => _$startCrisisMonitoringWithdrawal201ResponseSuccessEnumValueOf(name);
}

