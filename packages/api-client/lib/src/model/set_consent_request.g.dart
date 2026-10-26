// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_consent_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetConsentRequest extends SetConsentRequest {
  @override
  final bool granted;
  @override
  final String? appVersion;

  factory _$SetConsentRequest(
          [void Function(SetConsentRequestBuilder)? updates]) =>
      (SetConsentRequestBuilder()..update(updates))._build();

  _$SetConsentRequest._({required this.granted, this.appVersion}) : super._();
  @override
  SetConsentRequest rebuild(void Function(SetConsentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetConsentRequestBuilder toBuilder() =>
      SetConsentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetConsentRequest &&
        granted == other.granted &&
        appVersion == other.appVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, granted.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetConsentRequest')
          ..add('granted', granted)
          ..add('appVersion', appVersion))
        .toString();
  }
}

class SetConsentRequestBuilder
    implements Builder<SetConsentRequest, SetConsentRequestBuilder> {
  _$SetConsentRequest? _$v;

  bool? _granted;
  bool? get granted => _$this._granted;
  set granted(bool? granted) => _$this._granted = granted;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  SetConsentRequestBuilder() {
    SetConsentRequest._defaults(this);
  }

  SetConsentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _granted = $v.granted;
      _appVersion = $v.appVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetConsentRequest other) {
    _$v = other as _$SetConsentRequest;
  }

  @override
  void update(void Function(SetConsentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetConsentRequest build() => _build();

  _$SetConsentRequest _build() {
    final _$result = _$v ??
        _$SetConsentRequest._(
          granted: BuiltValueNullFieldError.checkNotNull(
              granted, r'SetConsentRequest', 'granted'),
          appVersion: appVersion,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
