//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'connection_state.g.dart';

class ConnectionState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending_therapist')
  static const ConnectionState pendingTherapist = _$pendingTherapist;
  @BuiltValueEnumConst(wireName: r'awaiting_patient_confirmation')
  static const ConnectionState awaitingPatientConfirmation = _$awaitingPatientConfirmation;
  @BuiltValueEnumConst(wireName: r'active')
  static const ConnectionState active = _$active;
  @BuiltValueEnumConst(wireName: r'ended')
  static const ConnectionState ended = _$ended;
  @BuiltValueEnumConst(wireName: r'flagged_wrong')
  static const ConnectionState flaggedWrong = _$flaggedWrong;

  static Serializer<ConnectionState> get serializer => _$connectionStateSerializer;

  const ConnectionState._(String name): super(name);

  static BuiltSet<ConnectionState> get values => _$values;
  static ConnectionState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ConnectionStateMixin = Object with _$ConnectionStateMixin;

