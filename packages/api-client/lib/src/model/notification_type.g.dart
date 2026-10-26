// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationType _$crisisAlert = const NotificationType._('crisisAlert');
const NotificationType _$dailyCheckin =
    const NotificationType._('dailyCheckin');
const NotificationType _$taskReminder =
    const NotificationType._('taskReminder');
const NotificationType _$inactivity = const NotificationType._('inactivity');
const NotificationType _$connectionUpdate =
    const NotificationType._('connectionUpdate');

NotificationType _$valueOf(String name) {
  switch (name) {
    case 'crisisAlert':
      return _$crisisAlert;
    case 'dailyCheckin':
      return _$dailyCheckin;
    case 'taskReminder':
      return _$taskReminder;
    case 'inactivity':
      return _$inactivity;
    case 'connectionUpdate':
      return _$connectionUpdate;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationType> _$values =
    BuiltSet<NotificationType>(const <NotificationType>[
  _$crisisAlert,
  _$dailyCheckin,
  _$taskReminder,
  _$inactivity,
  _$connectionUpdate,
]);

class _$NotificationTypeMeta {
  const _$NotificationTypeMeta();
  NotificationType get crisisAlert => _$crisisAlert;
  NotificationType get dailyCheckin => _$dailyCheckin;
  NotificationType get taskReminder => _$taskReminder;
  NotificationType get inactivity => _$inactivity;
  NotificationType get connectionUpdate => _$connectionUpdate;
  NotificationType valueOf(String name) => _$valueOf(name);
  BuiltSet<NotificationType> get values => _$values;
}

abstract class _$NotificationTypeMixin {
  // ignore: non_constant_identifier_names
  _$NotificationTypeMeta get NotificationType => const _$NotificationTypeMeta();
}

Serializer<NotificationType> _$notificationTypeSerializer =
    _$NotificationTypeSerializer();

class _$NotificationTypeSerializer
    implements PrimitiveSerializer<NotificationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'crisisAlert': 'crisis_alert',
    'dailyCheckin': 'daily_checkin',
    'taskReminder': 'task_reminder',
    'inactivity': 'inactivity',
    'connectionUpdate': 'connection_update',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'crisis_alert': 'crisisAlert',
    'daily_checkin': 'dailyCheckin',
    'task_reminder': 'taskReminder',
    'inactivity': 'inactivity',
    'connection_update': 'connectionUpdate',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationType];
  @override
  final String wireName = 'NotificationType';

  @override
  Object serialize(Serializers serializers, NotificationType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
