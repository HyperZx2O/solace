// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Survey extends Survey {
  @override
  final String id;
  @override
  final String key;
  @override
  final String title;
  @override
  final int version;
  @override
  final BuiltList<SurveyItemsInner> items;

  factory _$Survey([void Function(SurveyBuilder)? updates]) =>
      (SurveyBuilder()..update(updates))._build();

  _$Survey._(
      {required this.id,
      required this.key,
      required this.title,
      required this.version,
      required this.items})
      : super._();
  @override
  Survey rebuild(void Function(SurveyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyBuilder toBuilder() => SurveyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Survey &&
        id == other.id &&
        key == other.key &&
        title == other.title &&
        version == other.version &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Survey')
          ..add('id', id)
          ..add('key', key)
          ..add('title', title)
          ..add('version', version)
          ..add('items', items))
        .toString();
  }
}

class SurveyBuilder implements Builder<Survey, SurveyBuilder> {
  _$Survey? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  ListBuilder<SurveyItemsInner>? _items;
  ListBuilder<SurveyItemsInner> get items =>
      _$this._items ??= ListBuilder<SurveyItemsInner>();
  set items(ListBuilder<SurveyItemsInner>? items) => _$this._items = items;

  SurveyBuilder() {
    Survey._defaults(this);
  }

  SurveyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _key = $v.key;
      _title = $v.title;
      _version = $v.version;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Survey other) {
    _$v = other as _$Survey;
  }

  @override
  void update(void Function(SurveyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Survey build() => _build();

  _$Survey _build() {
    _$Survey _$result;
    try {
      _$result = _$v ??
          _$Survey._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Survey', 'id'),
            key: BuiltValueNullFieldError.checkNotNull(key, r'Survey', 'key'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Survey', 'title'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'Survey', 'version'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Survey', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
