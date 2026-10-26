// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_device_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegisterDeviceRequestPlatformEnum
    _$registerDeviceRequestPlatformEnum_android =
    const RegisterDeviceRequestPlatformEnum._('android');
const RegisterDeviceRequestPlatformEnum
    _$registerDeviceRequestPlatformEnum_ios =
    const RegisterDeviceRequestPlatformEnum._('ios');

RegisterDeviceRequestPlatformEnum _$registerDeviceRequestPlatformEnumValueOf(
    String name) {
  switch (name) {
    case 'android':
      return _$registerDeviceRequestPlatformEnum_android;
    case 'ios':
      return _$registerDeviceRequestPlatformEnum_ios;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegisterDeviceRequestPlatformEnum>
    _$registerDeviceRequestPlatformEnumValues = BuiltSet<
        RegisterDeviceRequestPlatformEnum>(const <RegisterDeviceRequestPlatformEnum>[
  _$registerDeviceRequestPlatformEnum_android,
  _$registerDeviceRequestPlatformEnum_ios,
]);

Serializer<RegisterDeviceRequestPlatformEnum>
    _$registerDeviceRequestPlatformEnumSerializer =
    _$RegisterDeviceRequestPlatformEnumSerializer();

class _$RegisterDeviceRequestPlatformEnumSerializer
    implements PrimitiveSerializer<RegisterDeviceRequestPlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'android': 'android',
    'ios': 'ios',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'android': 'android',
    'ios': 'ios',
  };

  @override
  final Iterable<Type> types = const <Type>[RegisterDeviceRequestPlatformEnum];
  @override
  final String wireName = 'RegisterDeviceRequestPlatformEnum';

  @override
  Object serialize(
          Serializers serializers, RegisterDeviceRequestPlatformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RegisterDeviceRequestPlatformEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RegisterDeviceRequestPlatformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RegisterDeviceRequest extends RegisterDeviceRequest {
  @override
  final String fcmToken;
  @override
  final RegisterDeviceRequestPlatformEnum platform;

  factory _$RegisterDeviceRequest(
          [void Function(RegisterDeviceRequestBuilder)? updates]) =>
      (RegisterDeviceRequestBuilder()..update(updates))._build();

  _$RegisterDeviceRequest._({required this.fcmToken, required this.platform})
      : super._();
  @override
  RegisterDeviceRequest rebuild(
          void Function(RegisterDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterDeviceRequestBuilder toBuilder() =>
      RegisterDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterDeviceRequest &&
        fcmToken == other.fcmToken &&
        platform == other.platform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterDeviceRequest')
          ..add('fcmToken', fcmToken)
          ..add('platform', platform))
        .toString();
  }
}

class RegisterDeviceRequestBuilder
    implements Builder<RegisterDeviceRequest, RegisterDeviceRequestBuilder> {
  _$RegisterDeviceRequest? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  RegisterDeviceRequestPlatformEnum? _platform;
  RegisterDeviceRequestPlatformEnum? get platform => _$this._platform;
  set platform(RegisterDeviceRequestPlatformEnum? platform) =>
      _$this._platform = platform;

  RegisterDeviceRequestBuilder() {
    RegisterDeviceRequest._defaults(this);
  }

  RegisterDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _platform = $v.platform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterDeviceRequest other) {
    _$v = other as _$RegisterDeviceRequest;
  }

  @override
  void update(void Function(RegisterDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterDeviceRequest build() => _build();

  _$RegisterDeviceRequest _build() {
    final _$result = _$v ??
        _$RegisterDeviceRequest._(
          fcmToken: BuiltValueNullFieldError.checkNotNull(
              fcmToken, r'RegisterDeviceRequest', 'fcmToken'),
          platform: BuiltValueNullFieldError.checkNotNull(
              platform, r'RegisterDeviceRequest', 'platform'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
