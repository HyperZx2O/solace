// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_survey_results200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListSurveyResults200ResponseSuccessEnum
    _$listSurveyResults200ResponseSuccessEnum_true_ =
    const ListSurveyResults200ResponseSuccessEnum._('true_');

ListSurveyResults200ResponseSuccessEnum
    _$listSurveyResults200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$listSurveyResults200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListSurveyResults200ResponseSuccessEnum>
    _$listSurveyResults200ResponseSuccessEnumValues = BuiltSet<
        ListSurveyResults200ResponseSuccessEnum>(const <ListSurveyResults200ResponseSuccessEnum>[
  _$listSurveyResults200ResponseSuccessEnum_true_,
]);

Serializer<ListSurveyResults200ResponseSuccessEnum>
    _$listSurveyResults200ResponseSuccessEnumSerializer =
    _$ListSurveyResults200ResponseSuccessEnumSerializer();

class _$ListSurveyResults200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<ListSurveyResults200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ListSurveyResults200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'ListSurveyResults200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          ListSurveyResults200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListSurveyResults200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListSurveyResults200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListSurveyResults200Response extends ListSurveyResults200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListSurveyResults200Response(
          [void Function(ListSurveyResults200ResponseBuilder)? updates]) =>
      (ListSurveyResults200ResponseBuilder()..update(updates))._build();

  _$ListSurveyResults200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListSurveyResults200Response rebuild(
          void Function(ListSurveyResults200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSurveyResults200ResponseBuilder toBuilder() =>
      ListSurveyResults200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSurveyResults200Response &&
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
    return (newBuiltValueToStringHelper(r'ListSurveyResults200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListSurveyResults200ResponseBuilder
    implements
        Builder<ListSurveyResults200Response,
            ListSurveyResults200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListSurveyResults200Response? _$v;

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

  ListSurveyResults200ResponseBuilder() {
    ListSurveyResults200Response._defaults(this);
  }

  ListSurveyResults200ResponseBuilder get _$this {
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
  void replace(covariant ListSurveyResults200Response other) {
    _$v = other as _$ListSurveyResults200Response;
  }

  @override
  void update(void Function(ListSurveyResults200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSurveyResults200Response build() => _build();

  _$ListSurveyResults200Response _build() {
    final _$result = _$v ??
        _$ListSurveyResults200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListSurveyResults200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListSurveyResults200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
