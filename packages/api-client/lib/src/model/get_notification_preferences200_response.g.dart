// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_preferences200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetNotificationPreferences200ResponseSuccessEnum
    _$getNotificationPreferences200ResponseSuccessEnum_true_ =
    const GetNotificationPreferences200ResponseSuccessEnum._('true_');

GetNotificationPreferences200ResponseSuccessEnum
    _$getNotificationPreferences200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$getNotificationPreferences200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetNotificationPreferences200ResponseSuccessEnum>
    _$getNotificationPreferences200ResponseSuccessEnumValues = BuiltSet<
        GetNotificationPreferences200ResponseSuccessEnum>(const <GetNotificationPreferences200ResponseSuccessEnum>[
  _$getNotificationPreferences200ResponseSuccessEnum_true_,
]);

Serializer<GetNotificationPreferences200ResponseSuccessEnum>
    _$getNotificationPreferences200ResponseSuccessEnumSerializer =
    _$GetNotificationPreferences200ResponseSuccessEnumSerializer();

class _$GetNotificationPreferences200ResponseSuccessEnumSerializer
    implements
        PrimitiveSerializer<GetNotificationPreferences200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetNotificationPreferences200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'GetNotificationPreferences200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          GetNotificationPreferences200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetNotificationPreferences200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetNotificationPreferences200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetNotificationPreferences200Response
    extends GetNotificationPreferences200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$GetNotificationPreferences200Response(
          [void Function(GetNotificationPreferences200ResponseBuilder)?
              updates]) =>
      (GetNotificationPreferences200ResponseBuilder()..update(updates))
          ._build();

  _$GetNotificationPreferences200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  GetNotificationPreferences200Response rebuild(
          void Function(GetNotificationPreferences200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNotificationPreferences200ResponseBuilder toBuilder() =>
      GetNotificationPreferences200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNotificationPreferences200Response &&
        success == other.success &&
        data == other.data &&
        timestamp == other.timestamp &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetNotificationPreferences200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class GetNotificationPreferences200ResponseBuilder
    implements
        Builder<GetNotificationPreferences200Response,
            GetNotificationPreferences200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$GetNotificationPreferences200Response? _$v;

  SuccessEnvelopeSuccessEnum? _success;
  SuccessEnvelopeSuccessEnum? get success => _$this._success;
  set success(covariant SuccessEnvelopeSuccessEnum? success) =>
      _$this._success = success;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(covariant JsonObject? data) => _$this._data = data;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(covariant DateTime? timestamp) => _$this._timestamp = timestamp;

  JsonObject? _error;
  JsonObject? get error => _$this._error;
  set error(covariant JsonObject? error) => _$this._error = error;

  GetNotificationPreferences200ResponseBuilder() {
    GetNotificationPreferences200Response._defaults(this);
  }

  GetNotificationPreferences200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data;
      _timestamp = $v.timestamp;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GetNotificationPreferences200Response other) {
    _$v = other as _$GetNotificationPreferences200Response;
  }

  @override
  void update(
      void Function(GetNotificationPreferences200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNotificationPreferences200Response build() => _build();

  _$GetNotificationPreferences200Response _build() {
    final _$result = _$v ??
        _$GetNotificationPreferences200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GetNotificationPreferences200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'GetNotificationPreferences200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
