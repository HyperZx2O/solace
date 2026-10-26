// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_deletion201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RequestDeletion201ResponseSuccessEnum
    _$requestDeletion201ResponseSuccessEnum_true_ =
    const RequestDeletion201ResponseSuccessEnum._('true_');

RequestDeletion201ResponseSuccessEnum
    _$requestDeletion201ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$requestDeletion201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RequestDeletion201ResponseSuccessEnum>
    _$requestDeletion201ResponseSuccessEnumValues = BuiltSet<
        RequestDeletion201ResponseSuccessEnum>(const <RequestDeletion201ResponseSuccessEnum>[
  _$requestDeletion201ResponseSuccessEnum_true_,
]);

Serializer<RequestDeletion201ResponseSuccessEnum>
    _$requestDeletion201ResponseSuccessEnumSerializer =
    _$RequestDeletion201ResponseSuccessEnumSerializer();

class _$RequestDeletion201ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<RequestDeletion201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RequestDeletion201ResponseSuccessEnum
  ];
  @override
  final String wireName = 'RequestDeletion201ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, RequestDeletion201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RequestDeletion201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RequestDeletion201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RequestDeletion201Response extends RequestDeletion201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$RequestDeletion201Response(
          [void Function(RequestDeletion201ResponseBuilder)? updates]) =>
      (RequestDeletion201ResponseBuilder()..update(updates))._build();

  _$RequestDeletion201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  RequestDeletion201Response rebuild(
          void Function(RequestDeletion201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestDeletion201ResponseBuilder toBuilder() =>
      RequestDeletion201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestDeletion201Response &&
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
    return (newBuiltValueToStringHelper(r'RequestDeletion201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class RequestDeletion201ResponseBuilder
    implements
        Builder<RequestDeletion201Response, RequestDeletion201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$RequestDeletion201Response? _$v;

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

  RequestDeletion201ResponseBuilder() {
    RequestDeletion201Response._defaults(this);
  }

  RequestDeletion201ResponseBuilder get _$this {
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
  void replace(covariant RequestDeletion201Response other) {
    _$v = other as _$RequestDeletion201Response;
  }

  @override
  void update(void Function(RequestDeletion201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestDeletion201Response build() => _build();

  _$RequestDeletion201Response _build() {
    final _$result = _$v ??
        _$RequestDeletion201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'RequestDeletion201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'RequestDeletion201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
