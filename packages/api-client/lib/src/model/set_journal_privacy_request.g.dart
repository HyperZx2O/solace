// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_journal_privacy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetJournalPrivacyRequest extends SetJournalPrivacyRequest {
  @override
  final JournalPrivacy privacy;

  factory _$SetJournalPrivacyRequest(
          [void Function(SetJournalPrivacyRequestBuilder)? updates]) =>
      (SetJournalPrivacyRequestBuilder()..update(updates))._build();

  _$SetJournalPrivacyRequest._({required this.privacy}) : super._();
  @override
  SetJournalPrivacyRequest rebuild(
          void Function(SetJournalPrivacyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetJournalPrivacyRequestBuilder toBuilder() =>
      SetJournalPrivacyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetJournalPrivacyRequest && privacy == other.privacy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetJournalPrivacyRequest')
          ..add('privacy', privacy))
        .toString();
  }
}

class SetJournalPrivacyRequestBuilder
    implements
        Builder<SetJournalPrivacyRequest, SetJournalPrivacyRequestBuilder> {
  _$SetJournalPrivacyRequest? _$v;

  JournalPrivacy? _privacy;
  JournalPrivacy? get privacy => _$this._privacy;
  set privacy(JournalPrivacy? privacy) => _$this._privacy = privacy;

  SetJournalPrivacyRequestBuilder() {
    SetJournalPrivacyRequest._defaults(this);
  }

  SetJournalPrivacyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privacy = $v.privacy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetJournalPrivacyRequest other) {
    _$v = other as _$SetJournalPrivacyRequest;
  }

  @override
  void update(void Function(SetJournalPrivacyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetJournalPrivacyRequest build() => _build();

  _$SetJournalPrivacyRequest _build() {
    final _$result = _$v ??
        _$SetJournalPrivacyRequest._(
          privacy: BuiltValueNullFieldError.checkNotNull(
              privacy, r'SetJournalPrivacyRequest', 'privacy'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
