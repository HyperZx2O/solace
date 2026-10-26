// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pending_connections200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListPendingConnections200ResponseSuccessEnum
    _$listPendingConnections200ResponseSuccessEnum_true_ =
    const ListPendingConnections200ResponseSuccessEnum._('true_');

ListPendingConnections200ResponseSuccessEnum
    _$listPendingConnections200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$listPendingConnections200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListPendingConnections200ResponseSuccessEnum>
    _$listPendingConnections200ResponseSuccessEnumValues = BuiltSet<
        ListPendingConnections200ResponseSuccessEnum>(const <ListPendingConnections200ResponseSuccessEnum>[
  _$listPendingConnections200ResponseSuccessEnum_true_,
]);

Serializer<ListPendingConnections200ResponseSuccessEnum>
    _$listPendingConnections200ResponseSuccessEnumSerializer =
    _$ListPendingConnections200ResponseSuccessEnumSerializer();

class _$ListPendingConnections200ResponseSuccessEnumSerializer
    implements
        PrimitiveSerializer<ListPendingConnections200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ListPendingConnections200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'ListPendingConnections200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          ListPendingConnections200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListPendingConnections200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListPendingConnections200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListPendingConnections200Response
    extends ListPendingConnections200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListPendingConnections200Response(
          [void Function(ListPendingConnections200ResponseBuilder)? updates]) =>
      (ListPendingConnections200ResponseBuilder()..update(updates))._build();

  _$ListPendingConnections200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListPendingConnections200Response rebuild(
          void Function(ListPendingConnections200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPendingConnections200ResponseBuilder toBuilder() =>
      ListPendingConnections200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPendingConnections200Response &&
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
    return (newBuiltValueToStringHelper(r'ListPendingConnections200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListPendingConnections200ResponseBuilder
    implements
        Builder<ListPendingConnections200Response,
            ListPendingConnections200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListPendingConnections200Response? _$v;

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

  ListPendingConnections200ResponseBuilder() {
    ListPendingConnections200Response._defaults(this);
  }

  ListPendingConnections200ResponseBuilder get _$this {
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
  void replace(covariant ListPendingConnections200Response other) {
    _$v = other as _$ListPendingConnections200Response;
  }

  @override
  void update(
      void Function(ListPendingConnections200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPendingConnections200Response build() => _build();

  _$ListPendingConnections200Response _build() {
    final _$result = _$v ??
        _$ListPendingConnections200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListPendingConnections200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListPendingConnections200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
