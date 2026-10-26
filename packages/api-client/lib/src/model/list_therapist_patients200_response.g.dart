// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_therapist_patients200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListTherapistPatients200ResponseSuccessEnum
    _$listTherapistPatients200ResponseSuccessEnum_true_ =
    const ListTherapistPatients200ResponseSuccessEnum._('true_');

ListTherapistPatients200ResponseSuccessEnum
    _$listTherapistPatients200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$listTherapistPatients200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListTherapistPatients200ResponseSuccessEnum>
    _$listTherapistPatients200ResponseSuccessEnumValues = BuiltSet<
        ListTherapistPatients200ResponseSuccessEnum>(const <ListTherapistPatients200ResponseSuccessEnum>[
  _$listTherapistPatients200ResponseSuccessEnum_true_,
]);

Serializer<ListTherapistPatients200ResponseSuccessEnum>
    _$listTherapistPatients200ResponseSuccessEnumSerializer =
    _$ListTherapistPatients200ResponseSuccessEnumSerializer();

class _$ListTherapistPatients200ResponseSuccessEnumSerializer
    implements
        PrimitiveSerializer<ListTherapistPatients200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ListTherapistPatients200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'ListTherapistPatients200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          ListTherapistPatients200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListTherapistPatients200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListTherapistPatients200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListTherapistPatients200Response
    extends ListTherapistPatients200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListTherapistPatients200Response(
          [void Function(ListTherapistPatients200ResponseBuilder)? updates]) =>
      (ListTherapistPatients200ResponseBuilder()..update(updates))._build();

  _$ListTherapistPatients200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListTherapistPatients200Response rebuild(
          void Function(ListTherapistPatients200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTherapistPatients200ResponseBuilder toBuilder() =>
      ListTherapistPatients200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTherapistPatients200Response &&
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
    return (newBuiltValueToStringHelper(r'ListTherapistPatients200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListTherapistPatients200ResponseBuilder
    implements
        Builder<ListTherapistPatients200Response,
            ListTherapistPatients200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListTherapistPatients200Response? _$v;

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

  ListTherapistPatients200ResponseBuilder() {
    ListTherapistPatients200Response._defaults(this);
  }

  ListTherapistPatients200ResponseBuilder get _$this {
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
  void replace(covariant ListTherapistPatients200Response other) {
    _$v = other as _$ListTherapistPatients200Response;
  }

  @override
  void update(void Function(ListTherapistPatients200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTherapistPatients200Response build() => _build();

  _$ListTherapistPatients200Response _build() {
    final _$result = _$v ??
        _$ListTherapistPatients200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListTherapistPatients200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListTherapistPatients200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
