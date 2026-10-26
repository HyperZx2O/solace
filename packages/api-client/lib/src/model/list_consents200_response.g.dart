// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_consents200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListConsents200ResponseSuccessEnum
    _$listConsents200ResponseSuccessEnum_true_ =
    const ListConsents200ResponseSuccessEnum._('true_');

ListConsents200ResponseSuccessEnum _$listConsents200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$listConsents200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListConsents200ResponseSuccessEnum>
    _$listConsents200ResponseSuccessEnumValues = BuiltSet<
        ListConsents200ResponseSuccessEnum>(const <ListConsents200ResponseSuccessEnum>[
  _$listConsents200ResponseSuccessEnum_true_,
]);

Serializer<ListConsents200ResponseSuccessEnum>
    _$listConsents200ResponseSuccessEnumSerializer =
    _$ListConsents200ResponseSuccessEnumSerializer();

class _$ListConsents200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<ListConsents200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[ListConsents200ResponseSuccessEnum];
  @override
  final String wireName = 'ListConsents200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, ListConsents200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListConsents200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListConsents200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListConsents200Response extends ListConsents200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListConsents200Response(
          [void Function(ListConsents200ResponseBuilder)? updates]) =>
      (ListConsents200ResponseBuilder()..update(updates))._build();

  _$ListConsents200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListConsents200Response rebuild(
          void Function(ListConsents200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListConsents200ResponseBuilder toBuilder() =>
      ListConsents200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListConsents200Response &&
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
    return (newBuiltValueToStringHelper(r'ListConsents200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListConsents200ResponseBuilder
    implements
        Builder<ListConsents200Response, ListConsents200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListConsents200Response? _$v;

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

  ListConsents200ResponseBuilder() {
    ListConsents200Response._defaults(this);
  }

  ListConsents200ResponseBuilder get _$this {
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
  void replace(covariant ListConsents200Response other) {
    _$v = other as _$ListConsents200Response;
  }

  @override
  void update(void Function(ListConsents200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListConsents200Response build() => _build();

  _$ListConsents200Response _build() {
    final _$result = _$v ??
        _$ListConsents200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListConsents200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListConsents200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
