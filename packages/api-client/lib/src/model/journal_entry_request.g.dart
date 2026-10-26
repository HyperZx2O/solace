// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_entry_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JournalEntryRequest extends JournalEntryRequest {
  @override
  final String clientId;
  @override
  final DateTime clientCreatedAt;
  @override
  final String text;
  @override
  final bool? analysisAllowed;

  factory _$JournalEntryRequest(
          [void Function(JournalEntryRequestBuilder)? updates]) =>
      (JournalEntryRequestBuilder()..update(updates))._build();

  _$JournalEntryRequest._(
      {required this.clientId,
      required this.clientCreatedAt,
      required this.text,
      this.analysisAllowed})
      : super._();
  @override
  JournalEntryRequest rebuild(
          void Function(JournalEntryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JournalEntryRequestBuilder toBuilder() =>
      JournalEntryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JournalEntryRequest &&
        clientId == other.clientId &&
        clientCreatedAt == other.clientCreatedAt &&
        text == other.text &&
        analysisAllowed == other.analysisAllowed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, analysisAllowed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JournalEntryRequest')
          ..add('clientId', clientId)
          ..add('clientCreatedAt', clientCreatedAt)
          ..add('text', text)
          ..add('analysisAllowed', analysisAllowed))
        .toString();
  }
}

class JournalEntryRequestBuilder
    implements Builder<JournalEntryRequest, JournalEntryRequestBuilder> {
  _$JournalEntryRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  DateTime? _clientCreatedAt;
  DateTime? get clientCreatedAt => _$this._clientCreatedAt;
  set clientCreatedAt(DateTime? clientCreatedAt) =>
      _$this._clientCreatedAt = clientCreatedAt;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _analysisAllowed;
  bool? get analysisAllowed => _$this._analysisAllowed;
  set analysisAllowed(bool? analysisAllowed) =>
      _$this._analysisAllowed = analysisAllowed;

  JournalEntryRequestBuilder() {
    JournalEntryRequest._defaults(this);
  }

  JournalEntryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientCreatedAt = $v.clientCreatedAt;
      _text = $v.text;
      _analysisAllowed = $v.analysisAllowed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JournalEntryRequest other) {
    _$v = other as _$JournalEntryRequest;
  }

  @override
  void update(void Function(JournalEntryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JournalEntryRequest build() => _build();

  _$JournalEntryRequest _build() {
    final _$result = _$v ??
        _$JournalEntryRequest._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'JournalEntryRequest', 'clientId'),
          clientCreatedAt: BuiltValueNullFieldError.checkNotNull(
              clientCreatedAt, r'JournalEntryRequest', 'clientCreatedAt'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'JournalEntryRequest', 'text'),
          analysisAllowed: analysisAllowed,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
