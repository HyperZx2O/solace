// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_journal_entries200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListJournalEntries200ResponseSuccessEnum
    _$listJournalEntries200ResponseSuccessEnum_true_ =
    const ListJournalEntries200ResponseSuccessEnum._('true_');

ListJournalEntries200ResponseSuccessEnum
    _$listJournalEntries200ResponseSuccessEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$listJournalEntries200ResponseSuccessEnum_true_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListJournalEntries200ResponseSuccessEnum>
    _$listJournalEntries200ResponseSuccessEnumValues = BuiltSet<
        ListJournalEntries200ResponseSuccessEnum>(const <ListJournalEntries200ResponseSuccessEnum>[
  _$listJournalEntries200ResponseSuccessEnum_true_,
]);

Serializer<ListJournalEntries200ResponseSuccessEnum>
    _$listJournalEntries200ResponseSuccessEnumSerializer =
    _$ListJournalEntries200ResponseSuccessEnumSerializer();

class _$ListJournalEntries200ResponseSuccessEnumSerializer
    implements PrimitiveSerializer<ListJournalEntries200ResponseSuccessEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ListJournalEntries200ResponseSuccessEnum
  ];
  @override
  final String wireName = 'ListJournalEntries200ResponseSuccessEnum';

  @override
  Object serialize(Serializers serializers,
          ListJournalEntries200ResponseSuccessEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListJournalEntries200ResponseSuccessEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListJournalEntries200ResponseSuccessEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListJournalEntries200Response extends ListJournalEntries200Response {
  @override
  final SuccessEnvelopeSuccessEnum success;
  @override
  final JsonObject? data;
  @override
  final DateTime timestamp;
  @override
  final JsonObject? error;

  factory _$ListJournalEntries200Response(
          [void Function(ListJournalEntries200ResponseBuilder)? updates]) =>
      (ListJournalEntries200ResponseBuilder()..update(updates))._build();

  _$ListJournalEntries200Response._(
      {required this.success, this.data, required this.timestamp, this.error})
      : super._();
  @override
  ListJournalEntries200Response rebuild(
          void Function(ListJournalEntries200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListJournalEntries200ResponseBuilder toBuilder() =>
      ListJournalEntries200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListJournalEntries200Response &&
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
    return (newBuiltValueToStringHelper(r'ListJournalEntries200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('timestamp', timestamp)
          ..add('error', error))
        .toString();
  }
}

class ListJournalEntries200ResponseBuilder
    implements
        Builder<ListJournalEntries200Response,
            ListJournalEntries200ResponseBuilder>,
        SuccessEnvelopeBuilder {
  _$ListJournalEntries200Response? _$v;

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

  ListJournalEntries200ResponseBuilder() {
    ListJournalEntries200Response._defaults(this);
  }

  ListJournalEntries200ResponseBuilder get _$this {
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
  void replace(covariant ListJournalEntries200Response other) {
    _$v = other as _$ListJournalEntries200Response;
  }

  @override
  void update(void Function(ListJournalEntries200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListJournalEntries200Response build() => _build();

  _$ListJournalEntries200Response _build() {
    final _$result = _$v ??
        _$ListJournalEntries200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListJournalEntries200Response', 'success'),
          data: data,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'ListJournalEntries200Response', 'timestamp'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
