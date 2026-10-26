// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_tier2_consent200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnswerTier2Consent200ResponseSuccessEnum
    _$answerTier2Consent200ResponseSuccessEnum_true_ =
    const AnswerTier2Consent200ResponseSuccessEnum._('true_');

AnswerTier2Consent200ResponseSuccessEnum
    _$answerTier2Consent200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$answerTier2Consent200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnswerTier2Consent200ResponseSuccessEnum>
    _$answerTier2Consent200ResponseSuccessEnumValues = BuiltSet<
        AnswerTier2Consent200ResponseSuccessEnum>(const <AnswerTier2Consent200ResponseSuccessEnum>[
  _$answerTier2Consent200ResponseSuccessEnum_true_,
]);

Serializer<AnswerTier2Consent200ResponseSuccessEnum>
    _$answerTier2Consent200ResponseSuccessEnumSerializer =
    _$AnswerTier2Consent200ResponseSuccessEnumSerializer();

class _$AnswerTier2Consent200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<AnswerTier2Consent200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AnswerTier2Consent200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'AnswerTier2Consent200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          AnswerTier2Consent200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnswerTier2Consent200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnswerTier2Consent200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnswerTier2Consent200Response extends AnswerTier2Consent200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$AnswerTier2Consent200Response(
          [void Function(AnswerTier2Consent200ResponseBuilder)? updates]) =>
      (AnswerTier2Consent200ResponseBuilder()..update(updates))._build();

  _$AnswerTier2Consent200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  AnswerTier2Consent200Response rebuild(
          void Function(AnswerTier2Consent200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerTier2Consent200ResponseBuilder toBuilder() =>
      AnswerTier2Consent200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerTier2Consent200Response &&
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
    return (newBuiltValueToStringHelper(r'AnswerTier2Consent200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class AnswerTier2Consent200ResponseBuilder
    implements
        Builder<AnswerTier2Consent200Response,
            AnswerTier2Consent200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$AnswerTier2Consent200Response? _$v;

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

  AnswerTier2Consent200ResponseBuilder() {
    AnswerTier2Consent200Response._defaults(this);
  }

  AnswerTier2Consent200ResponseBuilder get _$this {
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
  void replace(covariant AnswerTier2Consent200Response other) {
    _$v = other as _$AnswerTier2Consent200Response;
  }

  @override
  void update(void Function(AnswerTier2Consent200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerTier2Consent200Response build() => _build();

  _$AnswerTier2Consent200Response _build() {
    final _$result = _$v ??
        _$AnswerTier2Consent200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'AnswerTier2Consent200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'AnswerTier2Consent200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
