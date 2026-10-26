//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_state.g.dart';

class AlertState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'detected')
  static const AlertState detected = _$detected;
  @BuiltValueEnumConst(wireName: r'dispatched')
  static const AlertState dispatched = _$dispatched;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const AlertState delivered = _$delivered;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const AlertState acknowledged = _$acknowledged;
  @BuiltValueEnumConst(wireName: r'patient_contacted')
  static const AlertState patientContacted = _$patientContacted;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const AlertState resolved = _$resolved;
  @BuiltValueEnumConst(wireName: r'closed')
  static const AlertState closed = _$closed;

  static Serializer<AlertState> get serializer => _$alertStateSerializer;

  const AlertState._(String name): super(name);

  static BuiltSet<AlertState> get values => _$values;
  static AlertState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AlertStateMixin = Object with _$AlertStateMixin;

