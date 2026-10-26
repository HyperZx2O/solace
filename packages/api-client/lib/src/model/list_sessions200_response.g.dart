// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_sessions200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListSessions200ResponseSuccessEnum
    _$listSessions200ResponseSuccessEnum_true_ =
    const ListSessions200ResponseSuccessEnum._('true_');

ListSessions200ResponseSuccessEnum _$listSessions200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$listSessions200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListSessions200ResponseSuccessEnum>
    _$listSessions200ResponseSuccessEnumValues = BuiltSet<
        ListSessions200ResponseSuccessEnum>(const <ListSessions200ResponseSuccessEnum>[
  _$listSessions200ResponseSuccessEnum_true_,
]);

Serializer<ListSessions200ResponseSuccessEnum>
    _$listSessions200ResponseSuccessEnumSerializer =
    _$ListSessions200ResponseSuccessEnumSerializer();

class _$ListSessions200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<ListSessions200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[ListSessions200ResponseSuccessEnum];
  @override
  final String wireName = 'ListSessions200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, ListSessions200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListSessions200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListSessions200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListSessions200Response extends ListSessions200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListSessions200Response(
          [void Function(ListSessions200ResponseBuilder)? updates]) =>
      (ListSessions200ResponseBuilder()..update(updates))._build();

  _$ListSessions200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListSessions200Response rebuild(
          void Function(ListSessions200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSessions200ResponseBuilder toBuilder() =>
      ListSessions200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSessions200Response &&
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
    return (newBuiltValueToStringHelper(r'ListSessions200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListSessions200ResponseBuilder
    implements
        Builder<ListSessions200Response, ListSessions200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListSessions200Response? _$v;

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

  ListSessions200ResponseBuilder() {
    ListSessions200Response._defaults(this);
  }

  ListSessions200ResponseBuilder get _$this {
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
  void replace(covariant ListSessions200Response other) {
    _$v = other as _$ListSessions200Response;
  }

  @override
  void update(void Function(ListSessions200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSessions200Response build() => _build();

  _$ListSessions200Response _build() {
    final _$result = _$v ??
        _$ListSessions200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListSessions200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListSessions200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
