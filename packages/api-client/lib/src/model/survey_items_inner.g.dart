// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyItemsInner extends SurveyItemsInner {
  @override
  final String key;
  @override
  final String prompt;
  @override
  final int min;
  @override
  final int max;

  factory _$SurveyItemsInner(
          [void Function(SurveyItemsInnerBuilder)? updates]) =>
      (SurveyItemsInnerBuilder()..update(updates))._build();

  _$SurveyItemsInner._(
      {required this.key,
      required this.prompt,
      required this.min,
      required this.max})
      : super._();
  @override
  SurveyItemsInner rebuild(void Function(SurveyItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyItemsInnerBuilder toBuilder() =>
      SurveyItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyItemsInner &&
        key == other.key &&
        prompt == other.prompt &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, prompt.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SurveyItemsInner')
          ..add('key', key)
          ..add('prompt', prompt)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class SurveyItemsInnerBuilder
    implements Builder<SurveyItemsInner, SurveyItemsInnerBuilder> {
  _$SurveyItemsInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _prompt;
  String? get prompt => _$this._prompt;
  set prompt(String? prompt) => _$this._prompt = prompt;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  SurveyItemsInnerBuilder() {
    SurveyItemsInner._defaults(this);
  }

  SurveyItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _prompt = $v.prompt;
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyItemsInner other) {
    _$v = other as _$SurveyItemsInner;
  }

  @override
  void update(void Function(SurveyItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyItemsInner build() => _build();

  _$SurveyItemsInner _build() {
    final _$result = _$v ??
        _$SurveyItemsInner._(
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'SurveyItemsInner', 'key'),
          prompt: BuiltValueNullFieldError.checkNotNull(
              prompt, r'SurveyItemsInner', 'prompt'),
          min: BuiltValueNullFieldError.checkNotNull(
              min, r'SurveyItemsInner', 'min'),
          max: BuiltValueNullFieldError.checkNotNull(
              max, r'SurveyItemsInner', 'max'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
