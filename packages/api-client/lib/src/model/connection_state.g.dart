// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConnectionState _$pendingTherapist =
    const ConnectionState._('pendingTherapist');
const ConnectionState _$awaitingPatientConfirmation =
    const ConnectionState._('awaitingPatientConfirmation');
const ConnectionState _$active = const ConnectionState._('active');
const ConnectionState _$ended = const ConnectionState._('ended');
const ConnectionState _$flaggedWrong = const ConnectionState._('flaggedWrong');

ConnectionState _$valueOf(String name) {
  switch (name) {
    case 'pendingTherapist':
      return _$pendingTherapist;
    case 'awaitingPatientConfirmation':
      return _$awaitingPatientConfirmation;
    case 'active':
      return _$active;
    case 'ended':
      return _$ended;
    case 'flaggedWrong':
      return _$flaggedWrong;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConnectionState> _$values =
    BuiltSet<ConnectionState>(const <ConnectionState>[
  _$pendingTherapist,
  _$awaitingPatientConfirmation,
  _$active,
  _$ended,
  _$flaggedWrong,
]);

class _$ConnectionStateMeta {
  const _$ConnectionStateMeta();
  ConnectionState get pendingTherapist => _$pendingTherapist;
  ConnectionState get awaitingPatientConfirmation =>
      _$awaitingPatientConfirmation;
  ConnectionState get active => _$active;
  ConnectionState get ended => _$ended;
  ConnectionState get flaggedWrong => _$flaggedWrong;
  ConnectionState valueOf(String name) => _$valueOf(name);
  BuiltSet<ConnectionState> get values => _$values;
}

abstract class _$ConnectionStateMixin {
  // ignore: non_constant_identifier_names
  _$ConnectionStateMeta get ConnectionState => const _$ConnectionStateMeta();
}

Serializer<ConnectionState> _$connectionStateSerializer =
    _$ConnectionStateSerializer();

class _$ConnectionStateSerializer
    implements PrimitiveSerializer<ConnectionState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pendingTherapist': 'pending_therapist',
    'awaitingPatientConfirmation': 'awaiting_patient_confirmation',
    'active': 'active',
    'ended': 'ended',
    'flaggedWrong': 'flagged_wrong',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending_therapist': 'pendingTherapist',
    'awaiting_patient_confirmation': 'awaitingPatientConfirmation',
    'active': 'active',
    'ended': 'ended',
    'flagged_wrong': 'flaggedWrong',
  };

  @override
  final Iterable<Type> types = const <Type>[ConnectionState];
  @override
  final String wireName = 'ConnectionState';

  @override
  Object serialize(Serializers serializers, ConnectionState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConnectionState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConnectionState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
