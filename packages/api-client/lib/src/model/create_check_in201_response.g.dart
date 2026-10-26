// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_check_in201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateCheckIn201ResponseSuccessEnum
    _$createCheckIn201ResponseSuccessEnum_true_ =
    const CreateCheckIn201ResponseSuccessEnum._('true_');

CreateCheckIn201ResponseSuccessEnum
    _$createCheckIn201ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$createCheckIn201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateCheckIn201ResponseSuccessEnum>
    _$createCheckIn201ResponseSuccessEnumValues = BuiltSet<
        CreateCheckIn201ResponseSuccessEnum>(const <CreateCheckIn201ResponseSuccessEnum>[
  _$createCheckIn201ResponseSuccessEnum_true_,
]);

Serializer<CreateCheckIn201ResponseSuccessEnum>
    _$createCheckIn201ResponseSuccessEnumSerializer =
    _$CreateCheckIn201ResponseSuccessEnumSerializer();

class _$CreateCheckIn201ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<CreateCheckIn201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateCheckIn201ResponseSuccessEnum
  ];
  @override
  final String wireName = 'CreateCheckIn201ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, CreateCheckIn201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateCheckIn201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateCheckIn201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateCheckIn201Response extends CreateCheckIn201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$CreateCheckIn201Response(
          [void Function(CreateCheckIn201ResponseBuilder)? updates]) =>
      (CreateCheckIn201ResponseBuilder()..update(updates))._build();

  _$CreateCheckIn201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  CreateCheckIn201Response rebuild(
          void Function(CreateCheckIn201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCheckIn201ResponseBuilder toBuilder() =>
      CreateCheckIn201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCheckIn201Response &&
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
    return (newBuiltValueToStringHelper(r'CreateCheckIn201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class CreateCheckIn201ResponseBuilder
    implements
        Builder<CreateCheckIn201Response, CreateCheckIn201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$CreateCheckIn201Response? _$v;

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

  CreateCheckIn201ResponseBuilder() {
    CreateCheckIn201Response._defaults(this);
  }

  CreateCheckIn201ResponseBuilder get _$this {
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
  void replace(covariant CreateCheckIn201Response other) {
    _$v = other as _$CreateCheckIn201Response;
  }

  @override
  void update(void Function(CreateCheckIn201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCheckIn201Response build() => _build();

  _$CreateCheckIn201Response _build() {
    final _$result = _$v ??
        _$CreateCheckIn201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CreateCheckIn201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'CreateCheckIn201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
