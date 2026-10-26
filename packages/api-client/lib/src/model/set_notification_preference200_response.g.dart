// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_notification_preference200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SetNotificationPreference200ResponseSuccessEnum
    _$setNotificationPreference200ResponseSuccessEnum_true_ =
    const SetNotificationPreference200ResponseSuccessEnum._('true_');

SetNotificationPreference200ResponseSuccessEnum
    _$setNotificationPreference200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$setNotificationPreference200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SetNotificationPreference200ResponseSuccessEnum>
    _$setNotificationPreference200ResponseSuccessEnumValues = BuiltSet<
        SetNotificationPreference200ResponseSuccessEnum>(const <SetNotificationPreference200ResponseSuccessEnum>[
  _$setNotificationPreference200ResponseSuccessEnum_true_,
]);

Serializer<SetNotificationPreference200ResponseSuccessEnum>
    _$setNotificationPreference200ResponseSuccessEnumSerializer =
    _$SetNotificationPreference200ResponseSuccessEnumSerializer();

class _$SetNotificationPreference200ResponseSuccessEnumSerializer
    implements
        PrimitiveSerializer<SetNotificationPreference200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SetNotificationPreference200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'SetNotificationPreference200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          SetNotificationPreference200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SetNotificationPreference200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SetNotificationPreference200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SetNotificationPreference200Response
    extends SetNotificationPreference200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$SetNotificationPreference200Response(
          [void Function(SetNotificationPreference200ResponseBuilder)?
              updates]) =>
      (SetNotificationPreference200ResponseBuilder()..update(updates))._build();

  _$SetNotificationPreference200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  SetNotificationPreference200Response rebuild(
          void Function(SetNotificationPreference200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetNotificationPreference200ResponseBuilder toBuilder() =>
      SetNotificationPreference200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetNotificationPreference200Response &&
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
    return (newBuiltValueToStringHelper(r'SetNotificationPreference200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class SetNotificationPreference200ResponseBuilder
    implements
        Builder<SetNotificationPreference200Response,
            SetNotificationPreference200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$SetNotificationPreference200Response? _$v;

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

  SetNotificationPreference200ResponseBuilder() {
    SetNotificationPreference200Response._defaults(this);
  }

  SetNotificationPreference200ResponseBuilder get _$this {
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
  void replace(covariant SetNotificationPreference200Response other) {
    _$v = other as _$SetNotificationPreference200Response;
  }

  @override
  void update(
      void Function(SetNotificationPreference200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetNotificationPreference200Response build() => _build();

  _$SetNotificationPreference200Response _build() {
    final _$result = _$v ??
        _$SetNotificationPreference200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'SetNotificationPreference200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'SetNotificationPreference200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
