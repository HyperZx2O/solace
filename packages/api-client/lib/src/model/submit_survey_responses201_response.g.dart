// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_survey_responses201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubmitSurveyResponses201ResponseSuccessEnum
    _$submitSurveyResponses201ResponseSuccessEnum_true_ =
    const SubmitSurveyResponses201ResponseSuccessEnum._('true_');

SubmitSurveyResponses201ResponseSuccessEnum
    _$submitSurveyResponses201ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$submitSurveyResponses201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SubmitSurveyResponses201ResponseSuccessEnum>
    _$submitSurveyResponses201ResponseSuccessEnumValues = BuiltSet<
        SubmitSurveyResponses201ResponseSuccessEnum>(const <SubmitSurveyResponses201ResponseSuccessEnum>[
  _$submitSurveyResponses201ResponseSuccessEnum_true_,
]);

Serializer<SubmitSurveyResponses201ResponseSuccessEnum>
    _$submitSurveyResponses201ResponseSuccessEnumSerializer =
    _$SubmitSurveyResponses201ResponseSuccessEnumSerializer();

class _$SubmitSurveyResponses201ResponseSuccessEnumSerializer
    implements
        PrimitiveSerializer<SubmitSurveyResponses201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SubmitSurveyResponses201ResponseSuccessEnum
  ];
  @override
  final String wireName = 'SubmitSurveyResponses201ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          SubmitSurveyResponses201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubmitSurveyResponses201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubmitSurveyResponses201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SubmitSurveyResponses201Response
    extends SubmitSurveyResponses201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$SubmitSurveyResponses201Response(
          [void Function(SubmitSurveyResponses201ResponseBuilder)? updates]) =>
      (SubmitSurveyResponses201ResponseBuilder()..update(updates))._build();

  _$SubmitSurveyResponses201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  SubmitSurveyResponses201Response rebuild(
          void Function(SubmitSurveyResponses201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitSurveyResponses201ResponseBuilder toBuilder() =>
      SubmitSurveyResponses201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitSurveyResponses201Response &&
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
    return (newBuiltValueToStringHelper(r'SubmitSurveyResponses201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class SubmitSurveyResponses201ResponseBuilder
    implements
        Builder<SubmitSurveyResponses201Response,
            SubmitSurveyResponses201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$SubmitSurveyResponses201Response? _$v;

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

  SubmitSurveyResponses201ResponseBuilder() {
    SubmitSurveyResponses201Response._defaults(this);
  }

  SubmitSurveyResponses201ResponseBuilder get _$this {
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
  void replace(covariant SubmitSurveyResponses201Response other) {
    _$v = other as _$SubmitSurveyResponses201Response;
  }

  @override
  void update(void Function(SubmitSurveyResponses201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitSurveyResponses201Response build() => _build();

  _$SubmitSurveyResponses201Response _build() {
    final _$result = _$v ??
        _$SubmitSurveyResponses201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'SubmitSurveyResponses201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'SubmitSurveyResponses201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
