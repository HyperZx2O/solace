// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationPreference extends NotificationPreference {
  @override
  final NotificationType type;
  @override
  final bool enabled;
  @override
  final bool disableable;

  factory _$NotificationPreference(
          [void Function(NotificationPreferenceBuilder)? updates]) =>
      (NotificationPreferenceBuilder()..update(updates))._build();

  _$NotificationPreference._(
      {required this.type, required this.enabled, required this.disableable})
      : super._();
  @override
  NotificationPreference rebuild(
          void Function(NotificationPreferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationPreferenceBuilder toBuilder() =>
      NotificationPreferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPreference &&
        type == other.type &&
        enabled == other.enabled &&
        disableable == other.disableable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, disableable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPreference')
          ..add('type', type)
          ..add('enabled', enabled)
          ..add('disableable', disableable))
        .toString();
  }
}

class NotificationPreferenceBuilder
    implements Builder<NotificationPreference, NotificationPreferenceBuilder> {
  _$NotificationPreference? _$v;

  NotificationType? _type;
  NotificationType? get type => _$this._type;
  set type(NotificationType? type) => _$this._type = type;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _disableable;
  bool? get disableable => _$this._disableable;
  set disableable(bool? disableable) => _$this._disableable = disableable;

  NotificationPreferenceBuilder() {
    NotificationPreference._defaults(this);
  }

  NotificationPreferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _enabled = $v.enabled;
      _disableable = $v.disableable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPreference other) {
    _$v = other as _$NotificationPreference;
  }

  @override
  void update(void Function(NotificationPreferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPreference build() => _build();

  _$NotificationPreference _build() {
    final _$result = _$v ??
        _$NotificationPreference._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'NotificationPreference', 'type'),
          enabled: BuiltValueNullFieldError.checkNotNull(
              enabled, r'NotificationPreference', 'enabled'),
          disableable: BuiltValueNullFieldError.checkNotNull(
              disableable, r'NotificationPreference', 'disableable'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
