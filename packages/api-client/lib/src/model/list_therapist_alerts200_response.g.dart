// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_therapist_alerts200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListTherapistAlerts200ResponseSuccessEnum
    _$listTherapistAlerts200ResponseSuccessEnum_true_ =
    const ListTherapistAlerts200ResponseSuccessEnum._('true_');

ListTherapistAlerts200ResponseSuccessEnum
    _$listTherapistAlerts200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$listTherapistAlerts200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListTherapistAlerts200ResponseSuccessEnum>
    _$listTherapistAlerts200ResponseSuccessEnumValues = BuiltSet<
        ListTherapistAlerts200ResponseSuccessEnum>(const <ListTherapistAlerts200ResponseSuccessEnum>[
  _$listTherapistAlerts200ResponseSuccessEnum_true_,
]);

Serializer<ListTherapistAlerts200ResponseSuccessEnum>
    _$listTherapistAlerts200ResponseSuccessEnumSerializer =
    _$ListTherapistAlerts200ResponseSuccessEnumSerializer();

class _$ListTherapistAlerts200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<ListTherapistAlerts200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ListTherapistAlerts200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'ListTherapistAlerts200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          ListTherapistAlerts200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListTherapistAlerts200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListTherapistAlerts200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListTherapistAlerts200Response extends ListTherapistAlerts200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListTherapistAlerts200Response(
          [void Function(ListTherapistAlerts200ResponseBuilder)? updates]) =>
      (ListTherapistAlerts200ResponseBuilder()..update(updates))._build();

  _$ListTherapistAlerts200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListTherapistAlerts200Response rebuild(
          void Function(ListTherapistAlerts200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTherapistAlerts200ResponseBuilder toBuilder() =>
      ListTherapistAlerts200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTherapistAlerts200Response &&
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
    return (newBuiltValueToStringHelper(r'ListTherapistAlerts200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListTherapistAlerts200ResponseBuilder
    implements
        Builder<ListTherapistAlerts200Response,
            ListTherapistAlerts200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListTherapistAlerts200Response? _$v;

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

  ListTherapistAlerts200ResponseBuilder() {
    ListTherapistAlerts200Response._defaults(this);
  }

  ListTherapistAlerts200ResponseBuilder get _$this {
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
  void replace(covariant ListTherapistAlerts200Response other) {
    _$v = other as _$ListTherapistAlerts200Response;
  }

  @override
  void update(void Function(ListTherapistAlerts200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTherapistAlerts200Response build() => _build();

  _$ListTherapistAlerts200Response _build() {
    final _$result = _$v ??
        _$ListTherapistAlerts200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListTherapistAlerts200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListTherapistAlerts200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
