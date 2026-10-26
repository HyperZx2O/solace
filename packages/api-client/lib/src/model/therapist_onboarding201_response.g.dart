// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_onboarding201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TherapistOnboarding201ResponseSuccessEnum
    _$therapistOnboarding201ResponseSuccessEnum_true_ =
    const TherapistOnboarding201ResponseSuccessEnum._('true_');

TherapistOnboarding201ResponseSuccessEnum
    _$therapistOnboarding201ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$therapistOnboarding201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TherapistOnboarding201ResponseSuccessEnum>
    _$therapistOnboarding201ResponseSuccessEnumValues = BuiltSet<
        TherapistOnboarding201ResponseSuccessEnum>(const <TherapistOnboarding201ResponseSuccessEnum>[
  _$therapistOnboarding201ResponseSuccessEnum_true_,
]);

Serializer<TherapistOnboarding201ResponseSuccessEnum>
    _$therapistOnboarding201ResponseSuccessEnumSerializer =
    _$TherapistOnboarding201ResponseSuccessEnumSerializer();

class _$TherapistOnboarding201ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<TherapistOnboarding201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TherapistOnboarding201ResponseSuccessEnum
  ];
  @override
  final String wireName = 'TherapistOnboarding201ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          TherapistOnboarding201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TherapistOnboarding201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TherapistOnboarding201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TherapistOnboarding201Response extends TherapistOnboarding201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$TherapistOnboarding201Response(
          [void Function(TherapistOnboarding201ResponseBuilder)? updates]) =>
      (TherapistOnboarding201ResponseBuilder()..update(updates))._build();

  _$TherapistOnboarding201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  TherapistOnboarding201Response rebuild(
          void Function(TherapistOnboarding201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TherapistOnboarding201ResponseBuilder toBuilder() =>
      TherapistOnboarding201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TherapistOnboarding201Response &&
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
    return (newBuiltValueToStringHelper(r'TherapistOnboarding201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class TherapistOnboarding201ResponseBuilder
    implements
        Builder<TherapistOnboarding201Response,
            TherapistOnboarding201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$TherapistOnboarding201Response? _$v;

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

  TherapistOnboarding201ResponseBuilder() {
    TherapistOnboarding201Response._defaults(this);
  }

  TherapistOnboarding201ResponseBuilder get _$this {
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
  void replace(covariant TherapistOnboarding201Response other) {
    _$v = other as _$TherapistOnboarding201Response;
  }

  @override
  void update(void Function(TherapistOnboarding201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TherapistOnboarding201Response build() => _build();

  _$TherapistOnboarding201Response _build() {
    final _$result = _$v ??
        _$TherapistOnboarding201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'TherapistOnboarding201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'TherapistOnboarding201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
