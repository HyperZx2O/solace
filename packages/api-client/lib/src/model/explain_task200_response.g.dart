// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explain_task200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExplainTask200ResponseSuccessEnum
    _$explainTask200ResponseSuccessEnum_true_ =
    const ExplainTask200ResponseSuccessEnum._('true_');

ExplainTask200ResponseSuccessEnum _$explainTask200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$explainTask200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExplainTask200ResponseSuccessEnum>
    _$explainTask200ResponseSuccessEnumValues = BuiltSet<
        ExplainTask200ResponseSuccessEnum>(const <ExplainTask200ResponseSuccessEnum>[
  _$explainTask200ResponseSuccessEnum_true_,
]);

Serializer<ExplainTask200ResponseSuccessEnum>
    _$explainTask200ResponseSuccessEnumSerializer =
    _$ExplainTask200ResponseSuccessEnumSerializer();

class _$ExplainTask200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<ExplainTask200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[ExplainTask200ResponseSuccessEnum];
  @override
  final String wireName = 'ExplainTask200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, ExplainTask200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExplainTask200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExplainTask200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExplainTask200Response extends ExplainTask200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ExplainTask200Response(
          [void Function(ExplainTask200ResponseBuilder)? updates]) =>
      (ExplainTask200ResponseBuilder()..update(updates))._build();

  _$ExplainTask200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ExplainTask200Response rebuild(
          void Function(ExplainTask200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExplainTask200ResponseBuilder toBuilder() =>
      ExplainTask200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExplainTask200Response &&
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
    return (newBuiltValueToStringHelper(r'ExplainTask200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ExplainTask200ResponseBuilder
    implements
        Builder<ExplainTask200Response, ExplainTask200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ExplainTask200Response? _$v;

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

  ExplainTask200ResponseBuilder() {
    ExplainTask200Response._defaults(this);
  }

  ExplainTask200ResponseBuilder get _$this {
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
  void replace(covariant ExplainTask200Response other) {
    _$v = other as _$ExplainTask200Response;
  }

  @override
  void update(void Function(ExplainTask200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExplainTask200Response build() => _build();

  _$ExplainTask200Response _build() {
    final _$result = _$v ??
        _$ExplainTask200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ExplainTask200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ExplainTask200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
