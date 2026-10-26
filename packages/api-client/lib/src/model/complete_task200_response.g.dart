// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_task200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CompleteTask200ResponseSuccessEnum
    _$completeTask200ResponseSuccessEnum_true_ =
    const CompleteTask200ResponseSuccessEnum._('true_');

CompleteTask200ResponseSuccessEnum _$completeTask200ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$completeTask200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CompleteTask200ResponseSuccessEnum>
    _$completeTask200ResponseSuccessEnumValues = BuiltSet<
        CompleteTask200ResponseSuccessEnum>(const <CompleteTask200ResponseSuccessEnum>[
  _$completeTask200ResponseSuccessEnum_true_,
]);

Serializer<CompleteTask200ResponseSuccessEnum>
    _$completeTask200ResponseSuccessEnumSerializer =
    _$CompleteTask200ResponseSuccessEnumSerializer();

class _$CompleteTask200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<CompleteTask200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[CompleteTask200ResponseSuccessEnum];
  @override
  final String wireName = 'CompleteTask200ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, CompleteTask200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CompleteTask200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CompleteTask200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CompleteTask200Response extends CompleteTask200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$CompleteTask200Response(
          [void Function(CompleteTask200ResponseBuilder)? updates]) =>
      (CompleteTask200ResponseBuilder()..update(updates))._build();

  _$CompleteTask200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  CompleteTask200Response rebuild(
          void Function(CompleteTask200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteTask200ResponseBuilder toBuilder() =>
      CompleteTask200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteTask200Response &&
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
    return (newBuiltValueToStringHelper(r'CompleteTask200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class CompleteTask200ResponseBuilder
    implements
        Builder<CompleteTask200Response, CompleteTask200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$CompleteTask200Response? _$v;

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

  CompleteTask200ResponseBuilder() {
    CompleteTask200Response._defaults(this);
  }

  CompleteTask200ResponseBuilder get _$this {
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
  void replace(covariant CompleteTask200Response other) {
    _$v = other as _$CompleteTask200Response;
  }

  @override
  void update(void Function(CompleteTask200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompleteTask200Response build() => _build();

  _$CompleteTask200Response _build() {
    final _$result = _$v ??
        _$CompleteTask200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CompleteTask200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'CompleteTask200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
