// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_crisis_monitoring_withdrawal201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StartCrisisMonitoringWithdrawal201ResponseSuccessEnum
    _$startCrisisMonitoringWithdrawal201ResponseSuccessEnum_true_ =
    const StartCrisisMonitoringWithdrawal201ResponseSuccessEnum._('true_');

StartCrisisMonitoringWithdrawal201ResponseSuccessEnum
    _$startCrisisMonitoringWithdrawal201ResponseSuccessEnumValueOf(
        String name) {
  switch (name) {
    case 'true_':
      return _$startCrisisMonitoringWithdrawal201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StartCrisisMonitoringWithdrawal201ResponseSuccessEnum>
    _$startCrisisMonitoringWithdrawal201ResponseSuccessEnumValues = BuiltSet<
        StartCrisisMonitoringWithdrawal201ResponseSuccessEnum>(const <StartCrisisMonitoringWithdrawal201ResponseSuccessEnum>[
  _$startCrisisMonitoringWithdrawal201ResponseSuccessEnum_true_,
]);

Serializer<StartCrisisMonitoringWithdrawal201ResponseSuccessEnum>
    _$startCrisisMonitoringWithdrawal201ResponseSuccessEnumSerializer =
    _$StartCrisisMonitoringWithdrawal201ResponseSuccessEnumSerializer();

class _$StartCrisisMonitoringWithdrawal201ResponseSuccessEnumSerializer
    implements
        PrimitiveSerializer<
            StartCrisisMonitoringWithdrawal201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StartCrisisMonitoringWithdrawal201ResponseSuccessEnum
  ];
  @override
  final String wireName =
      'StartCrisisMonitoringWithdrawal201ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          StartCrisisMonitoringWithdrawal201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartCrisisMonitoringWithdrawal201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartCrisisMonitoringWithdrawal201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartCrisisMonitoringWithdrawal201Response
    extends StartCrisisMonitoringWithdrawal201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$StartCrisisMonitoringWithdrawal201Response(
          [void Function(StartCrisisMonitoringWithdrawal201ResponseBuilder)?
              updates]) =>
      (StartCrisisMonitoringWithdrawal201ResponseBuilder()..update(updates))
          ._build();

  _$StartCrisisMonitoringWithdrawal201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  StartCrisisMonitoringWithdrawal201Response rebuild(
          void Function(StartCrisisMonitoringWithdrawal201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartCrisisMonitoringWithdrawal201ResponseBuilder toBuilder() =>
      StartCrisisMonitoringWithdrawal201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartCrisisMonitoringWithdrawal201Response &&
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
    return (newBuiltValueToStringHelper(
            r'StartCrisisMonitoringWithdrawal201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class StartCrisisMonitoringWithdrawal201ResponseBuilder
    implements
        Builder<StartCrisisMonitoringWithdrawal201Response,
            StartCrisisMonitoringWithdrawal201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$StartCrisisMonitoringWithdrawal201Response? _$v;

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

  StartCrisisMonitoringWithdrawal201ResponseBuilder() {
    StartCrisisMonitoringWithdrawal201Response._defaults(this);
  }

  StartCrisisMonitoringWithdrawal201ResponseBuilder get _$this {
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
  void replace(covariant StartCrisisMonitoringWithdrawal201Response other) {
    _$v = other as _$StartCrisisMonitoringWithdrawal201Response;
  }

  @override
  void update(
      void Function(StartCrisisMonitoringWithdrawal201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  StartCrisisMonitoringWithdrawal201Response build() => _build();

  _$StartCrisisMonitoringWithdrawal201Response _build() {
    final _$result = _$v ??
        _$StartCrisisMonitoringWithdrawal201Response._(
          success: BuiltValueNullFieldError.checkNotNull(success,
              r'StartCrisisMonitoringWithdrawal201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
              r'StartCrisisMonitoringWithdrawal201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
