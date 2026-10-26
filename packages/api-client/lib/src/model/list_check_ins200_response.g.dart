// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_check_ins200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListCheckIns200ResponseSuccessEnum
    _$listCheckIns200ResponseSuccessEnum_true_ =
    const ListCheckIns200ResponseSuccessEnum._('true_');

ListCheckIns200ResponseSuccessEnum _$listCheckIns200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$listCheckIns200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListCheckIns200ResponseSuccessEnum>
    _$listCheckIns200ResponseSuccessEnumValues = BuiltSet<
        ListCheckIns200ResponseSuccessEnum>(const <ListCheckIns200ResponseSuccessEnum>[
  _$listCheckIns200ResponseSuccessEnum_true_,
]);

Serializer<ListCheckIns200ResponseSuccessEnum>
    _$listCheckIns200ResponseSuccessEnumSerializer =
    _$ListCheckIns200ResponseSuccessEnumSerializer();

class _$ListCheckIns200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<ListCheckIns200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[ListCheckIns200ResponseSuccessEnum];
  @override
  final String wireName = 'ListCheckIns200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, ListCheckIns200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListCheckIns200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListCheckIns200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListCheckIns200Response extends ListCheckIns200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListCheckIns200Response(
          [void Function(ListCheckIns200ResponseBuilder)? updates]) =>
      (ListCheckIns200ResponseBuilder()..update(updates))._build();

  _$ListCheckIns200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListCheckIns200Response rebuild(
          void Function(ListCheckIns200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListCheckIns200ResponseBuilder toBuilder() =>
      ListCheckIns200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListCheckIns200Response &&
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
    return (newBuiltValueToStringHelper(r'ListCheckIns200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListCheckIns200ResponseBuilder
    implements
        Builder<ListCheckIns200Response, ListCheckIns200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListCheckIns200Response? _$v;

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

  ListCheckIns200ResponseBuilder() {
    ListCheckIns200Response._defaults(this);
  }

  ListCheckIns200ResponseBuilder get _$this {
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
  void replace(covariant ListCheckIns200Response other) {
    _$v = other as _$ListCheckIns200Response;
  }

  @override
  void update(void Function(ListCheckIns200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListCheckIns200Response build() => _build();

  _$ListCheckIns200Response _build() {
    final _$result = _$v ??
        _$ListCheckIns200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListCheckIns200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListCheckIns200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
