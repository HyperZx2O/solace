// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_tier2_consent_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswerTier2ConsentRequest extends AnswerTier2ConsentRequest {
  @override
  final bool granted;

  factory _$AnswerTier2ConsentRequest(
          [void Function(AnswerTier2ConsentRequestBuilder)? updates]) =>
      (AnswerTier2ConsentRequestBuilder()..update(updates))._build();

  _$AnswerTier2ConsentRequest._({required this.granted}) : super._();
  @override
  AnswerTier2ConsentRequest rebuild(
          void Function(AnswerTier2ConsentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerTier2ConsentRequestBuilder toBuilder() =>
      AnswerTier2ConsentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerTier2ConsentRequest && granted == other.granted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, granted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnswerTier2ConsentRequest')
          ..add('granted', granted))
        .toString();
  }
}

class AnswerTier2ConsentRequestBuilder
    implements
        Builder<AnswerTier2ConsentRequest, AnswerTier2ConsentRequestBuilder> {
  _$AnswerTier2ConsentRequest? _$v;

  bool? _granted;
  bool? get granted => _$this._granted;
  set granted(bool? granted) => _$this._granted = granted;

  AnswerTier2ConsentRequestBuilder() {
    AnswerTier2ConsentRequest._defaults(this);
  }

  AnswerTier2ConsentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _granted = $v.granted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerTier2ConsentRequest other) {
    _$v = other as _$AnswerTier2ConsentRequest;
  }

  @override
  void update(void Function(AnswerTier2ConsentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerTier2ConsentRequest build() => _build();

  _$AnswerTier2ConsentRequest _build() {
    final _$result = _$v ??
        _$AnswerTier2ConsentRequest._(
          granted: BuiltValueNullFieldError.checkNotNull(
              granted, r'AnswerTier2ConsentRequest', 'granted'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
