// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_export201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RequestExport201ResponseSuccessEnum
    _$requestExport201ResponseSuccessEnum_true_ =
    const RequestExport201ResponseSuccessEnum._('true_');

RequestExport201ResponseSuccessEnum
    _$requestExport201ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$requestExport201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RequestExport201ResponseSuccessEnum>
    _$requestExport201ResponseSuccessEnumValues = BuiltSet<
        RequestExport201ResponseSuccessEnum>(const <RequestExport201ResponseSuccessEnum>[
  _$requestExport201ResponseSuccessEnum_true_,
]);

Serializer<RequestExport201ResponseSuccessEnum>
    _$requestExport201ResponseSuccessEnumSerializer =
    _$RequestExport201ResponseSuccessEnumSerializer();

class _$RequestExport201ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<RequestExport201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RequestExport201ResponseSuccessEnum
  ];
  @override
  final String wireName = 'RequestExport201ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, RequestExport201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RequestExport201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RequestExport201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RequestExport201Response extends RequestExport201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$RequestExport201Response(
          [void Function(RequestExport201ResponseBuilder)? updates]) =>
      (RequestExport201ResponseBuilder()..update(updates))._build();

  _$RequestExport201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  RequestExport201Response rebuild(
          void Function(RequestExport201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestExport201ResponseBuilder toBuilder() =>
      RequestExport201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestExport201Response &&
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
    return (newBuiltValueToStringHelper(r'RequestExport201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class RequestExport201ResponseBuilder
    implements
        Builder<RequestExport201Response, RequestExport201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$RequestExport201Response? _$v;

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

  RequestExport201ResponseBuilder() {
    RequestExport201Response._defaults(this);
  }

  RequestExport201ResponseBuilder get _$this {
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
  void replace(covariant RequestExport201Response other) {
    _$v = other as _$RequestExport201Response;
  }

  @override
  void update(void Function(RequestExport201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestExport201Response build() => _build();

  _$RequestExport201Response _build() {
    final _$result = _$v ??
        _$RequestExport201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'RequestExport201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'RequestExport201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
