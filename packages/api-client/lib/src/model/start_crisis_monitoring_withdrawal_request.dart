//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_crisis_monitoring_withdrawal_request.g.dart';

/// StartCrisisMonitoringWithdrawalRequest
///
/// Properties:
/// * [clientId] 
@BuiltValue()
abstract class StartCrisisMonitoringWithdrawalRequest implements Built<StartCrisisMonitoringWithdrawalRequest, StartCrisisMonitoringWithdrawalRequestBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  StartCrisisMonitoringWithdrawalRequest._();

  factory StartCrisisMonitoringWithdrawalRequest([void updates(StartCrisisMonitoringWithdrawalRequestBuilder b)]) = _$StartCrisisMonitoringWithdrawalRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartCrisisMonitoringWithdrawalRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartCrisisMonitoringWithdrawalRequest> get serializer => _$StartCrisisMonitoringWithdrawalRequestSerializer();
}

class _$StartCrisisMonitoringWithdrawalRequestSerializer implements PrimitiveSerializer<StartCrisisMonitoringWithdrawalRequest> {
  @override
  final Iterable<Type> types = const [StartCrisisMonitoringWithdrawalRequest, _$StartCrisisMonitoringWithdrawalRequest];

  @override
  final String wireName = r'StartCrisisMonitoringWithdrawalRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartCrisisMonitoringWithdrawalRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartCrisisMonitoringWithdrawalRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartCrisisMonitoringWithdrawalRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartCrisisMonitoringWithdrawalRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartCrisisMonitoringWithdrawalRequestBuilder();
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

