// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_survey200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CompleteSurvey200ResponseSuccessEnum
    _$completeSurvey200ResponseSuccessEnum_true_ =
    const CompleteSurvey200ResponseSuccessEnum._('true_');

CompleteSurvey200ResponseSuccessEnum
    _$completeSurvey200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$completeSurvey200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CompleteSurvey200ResponseSuccessEnum>
    _$completeSurvey200ResponseSuccessEnumValues = BuiltSet<
        CompleteSurvey200ResponseSuccessEnum>(const <CompleteSurvey200ResponseSuccessEnum>[
  _$completeSurvey200ResponseSuccessEnum_true_,
]);

Serializer<CompleteSurvey200ResponseSuccessEnum>
    _$completeSurvey200ResponseSuccessEnumSerializer =
    _$CompleteSurvey200ResponseSuccessEnumSerializer();

class _$CompleteSurvey200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<CompleteSurvey200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CompleteSurvey200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'CompleteSurvey200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, CompleteSurvey200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CompleteSurvey200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CompleteSurvey200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CompleteSurvey200Response extends CompleteSurvey200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$CompleteSurvey200Response(
          [void Function(CompleteSurvey200ResponseBuilder)? updates]) =>
      (CompleteSurvey200ResponseBuilder()..update(updates))._build();

  _$CompleteSurvey200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  CompleteSurvey200Response rebuild(
          void Function(CompleteSurvey200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteSurvey200ResponseBuilder toBuilder() =>
      CompleteSurvey200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteSurvey200Response &&
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
    return (newBuiltValueToStringHelper(r'CompleteSurvey200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class CompleteSurvey200ResponseBuilder
    implements
        Builder<CompleteSurvey200Response, CompleteSurvey200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$CompleteSurvey200Response? _$v;

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

  CompleteSurvey200ResponseBuilder() {
    CompleteSurvey200Response._defaults(this);
  }

  CompleteSurvey200ResponseBuilder get _$this {
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
  void replace(covariant CompleteSurvey200Response other) {
    _$v = other as _$CompleteSurvey200Response;
  }

  @override
  void update(void Function(CompleteSurvey200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompleteSurvey200Response build() => _build();

  _$CompleteSurvey200Response _build() {
    final _$result = _$v ??
        _$CompleteSurvey200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CompleteSurvey200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'CompleteSurvey200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
