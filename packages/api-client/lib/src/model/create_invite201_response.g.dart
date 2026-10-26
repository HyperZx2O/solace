// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invite201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateInvite201ResponseSuccessEnum
    _$createInvite201ResponseSuccessEnum_true_ =
    const CreateInvite201ResponseSuccessEnum._('true_');

CreateInvite201ResponseSuccessEnum _$createInvite201ResponseSuccessEnumValueOf(
    String name) {
  switch (name) {
    case 'true_':
      return _$createInvite201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateInvite201ResponseSuccessEnum>
    _$createInvite201ResponseSuccessEnumValues = BuiltSet<
        CreateInvite201ResponseSuccessEnum>(const <CreateInvite201ResponseSuccessEnum>[
  _$createInvite201ResponseSuccessEnum_true_,
]);

Serializer<CreateInvite201ResponseSuccessEnum>
    _$createInvite201ResponseSuccessEnumSerializer =
    _$CreateInvite201ResponseSuccessEnumSerializer();

class _$CreateInvite201ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<CreateInvite201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateInvite201ResponseSuccessEnum];
  @override
  final String wireName = 'CreateInvite201ResponseSuccessEnum';

  @override
  Object serialize(
          Serializers serializers, CreateInvite201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateInvite201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateInvite201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateInvite201Response extends CreateInvite201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$CreateInvite201Response(
          [void Function(CreateInvite201ResponseBuilder)? updates]) =>
      (CreateInvite201ResponseBuilder()..update(updates))._build();

  _$CreateInvite201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  CreateInvite201Response rebuild(
          void Function(CreateInvite201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInvite201ResponseBuilder toBuilder() =>
      CreateInvite201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInvite201Response &&
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
    return (newBuiltValueToStringHelper(r'CreateInvite201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class CreateInvite201ResponseBuilder
    implements
        Builder<CreateInvite201Response, CreateInvite201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$CreateInvite201Response? _$v;

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

  CreateInvite201ResponseBuilder() {
    CreateInvite201Response._defaults(this);
  }

  CreateInvite201ResponseBuilder get _$this {
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
  void replace(covariant CreateInvite201Response other) {
    _$v = other as _$CreateInvite201Response;
  }

  @override
  void update(void Function(CreateInvite201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInvite201Response build() => _build();

  _$CreateInvite201Response _build() {
    final _$result = _$v ??
        _$CreateInvite201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CreateInvite201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'CreateInvite201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
