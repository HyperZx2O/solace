// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_journal_entry201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateJournalEntry201ResponseSuccessEnum
    _$createJournalEntry201ResponseSuccessEnum_true_ =
    const CreateJournalEntry201ResponseSuccessEnum._('true_');

CreateJournalEntry201ResponseSuccessEnum
    _$createJournalEntry201ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$createJournalEntry201ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateJournalEntry201ResponseSuccessEnum>
    _$createJournalEntry201ResponseSuccessEnumValues = BuiltSet<
        CreateJournalEntry201ResponseSuccessEnum>(const <CreateJournalEntry201ResponseSuccessEnum>[
  _$createJournalEntry201ResponseSuccessEnum_true_,
]);

Serializer<CreateJournalEntry201ResponseSuccessEnum>
    _$createJournalEntry201ResponseSuccessEnumSerializer =
    _$CreateJournalEntry201ResponseSuccessEnumSerializer();

class _$CreateJournalEntry201ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<CreateJournalEntry201ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateJournalEntry201ResponseSuccessEnum
  ];
  @override
  final String wireName = 'CreateJournalEntry201ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          CreateJournalEntry201ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateJournalEntry201ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateJournalEntry201ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateJournalEntry201Response extends CreateJournalEntry201Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$CreateJournalEntry201Response(
          [void Function(CreateJournalEntry201ResponseBuilder)? updates]) =>
      (CreateJournalEntry201ResponseBuilder()..update(updates))._build();

  _$CreateJournalEntry201Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  CreateJournalEntry201Response rebuild(
          void Function(CreateJournalEntry201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateJournalEntry201ResponseBuilder toBuilder() =>
      CreateJournalEntry201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateJournalEntry201Response &&
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
    return (newBuiltValueToStringHelper(r'CreateJournalEntry201Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class CreateJournalEntry201ResponseBuilder
    implements
        Builder<CreateJournalEntry201Response,
            CreateJournalEntry201ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$CreateJournalEntry201Response? _$v;

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

  CreateJournalEntry201ResponseBuilder() {
    CreateJournalEntry201Response._defaults(this);
  }

  CreateJournalEntry201ResponseBuilder get _$this {
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
  void replace(covariant CreateJournalEntry201Response other) {
    _$v = other as _$CreateJournalEntry201Response;
  }

  @override
  void update(void Function(CreateJournalEntry201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateJournalEntry201Response build() => _build();

  _$CreateJournalEntry201Response _build() {
    final _$result = _$v ??
        _$CreateJournalEntry201Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CreateJournalEntry201Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'CreateJournalEntry201Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
