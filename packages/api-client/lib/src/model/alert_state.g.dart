// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertState _$detected = const AlertState._('detected');
const AlertState _$dispatched = const AlertState._('dispatched');
const AlertState _$delivered = const AlertState._('delivered');
const AlertState _$acknowledged = const AlertState._('acknowledged');
const AlertState _$patientContacted = const AlertState._('patientContacted');
const AlertState _$resolved = const AlertState._('resolved');
const AlertState _$closed = const AlertState._('closed');

AlertState _$valueOf(String name) {
  switch (name) {
    case 'detected':
      return _$detected;
    case 'dispatched':
      return _$dispatched;
    case 'delivered':
      return _$delivered;
    case 'acknowledged':
      return _$acknowledged;
    case 'patientContacted':
      return _$patientContacted;
    case 'resolved':
      return _$resolved;
    case 'closed':
      return _$closed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertState> _$values = BuiltSet<AlertState>(const <AlertState>[
  _$detected,
  _$dispatched,
  _$delivered,
  _$acknowledged,
  _$patientContacted,
  _$resolved,
  _$closed,
]);

class _$AlertStateMeta {
  const _$AlertStateMeta();
  AlertState get detected => _$detected;
  AlertState get dispatched => _$dispatched;
  AlertState get delivered => _$delivered;
  AlertState get acknowledged => _$acknowledged;
  AlertState get patientContacted => _$patientContacted;
  AlertState get resolved => _$resolved;
  AlertState get closed => _$closed;
  AlertState valueOf(String name) => _$valueOf(name);
  BuiltSet<AlertState> get values => _$values;
}

abstract class _$AlertStateMixin {
  // ignore: non_constant_identifier_names
  _$AlertStateMeta get AlertState => const _$AlertStateMeta();
}

Serializer<AlertState> _$alertStateSerializer = _$AlertStateSerializer();

class _$AlertStateSerializer implements PrimitiveSerializer<AlertState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'detected': 'detected',
    'dispatched': 'dispatched',
    'delivered': 'delivered',
    'acknowledged': 'acknowledged',
    'patientContacted': 'patient_contacted',
    'resolved': 'resolved',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'detected': 'detected',
    'dispatched': 'dispatched',
    'delivered': 'delivered',
    'acknowledged': 'acknowledged',
    'patient_contacted': 'patientContacted',
    'resolved': 'resolved',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertState];
  @override
  final String wireName = 'AlertState';

  @override
  Object serialize(Serializers serializers, AlertState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlertState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlertState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
