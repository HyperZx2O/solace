// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_notification_preference_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetNotificationPreferenceRequest
    extends SetNotificationPreferenceRequest {
  @override
  final bool enabled;

  factory _$SetNotificationPreferenceRequest(
          [void Function(SetNotificationPreferenceRequestBuilder)? updates]) =>
      (SetNotificationPreferenceRequestBuilder()..update(updates))._build();

  _$SetNotificationPreferenceRequest._({required this.enabled}) : super._();
  @override
  SetNotificationPreferenceRequest rebuild(
          void Function(SetNotificationPreferenceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetNotificationPreferenceRequestBuilder toBuilder() =>
      SetNotificationPreferenceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetNotificationPreferenceRequest &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetNotificationPreferenceRequest')
          ..add('enabled', enabled))
        .toString();
  }
}

class SetNotificationPreferenceRequestBuilder
    implements
        Builder<SetNotificationPreferenceRequest,
            SetNotificationPreferenceRequestBuilder> {
  _$SetNotificationPreferenceRequest? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  SetNotificationPreferenceRequestBuilder() {
    SetNotificationPreferenceRequest._defaults(this);
  }

  SetNotificationPreferenceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetNotificationPreferenceRequest other) {
    _$v = other as _$SetNotificationPreferenceRequest;
  }

  @override
  void update(void Function(SetNotificationPreferenceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetNotificationPreferenceRequest build() => _build();

  _$SetNotificationPreferenceRequest _build() {
    final _$result = _$v ??
        _$SetNotificationPreferenceRequest._(
          enabled: BuiltValueNullFieldError.checkNotNull(
              enabled, r'SetNotificationPreferenceRequest', 'enabled'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
