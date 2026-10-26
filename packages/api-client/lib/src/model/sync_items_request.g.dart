// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_items_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SyncItemsRequest extends SyncItemsRequest {
  @override
  final BuiltList<SyncItem> items;

  factory _$SyncItemsRequest(
          [void Function(SyncItemsRequestBuilder)? updates]) =>
      (SyncItemsRequestBuilder()..update(updates))._build();

  _$SyncItemsRequest._({required this.items}) : super._();
  @override
  SyncItemsRequest rebuild(void Function(SyncItemsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncItemsRequestBuilder toBuilder() =>
      SyncItemsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncItemsRequest && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SyncItemsRequest')
          ..add('items', items))
        .toString();
  }
}

class SyncItemsRequestBuilder
    implements Builder<SyncItemsRequest, SyncItemsRequestBuilder> {
  _$SyncItemsRequest? _$v;

  ListBuilder<SyncItem>? _items;
  ListBuilder<SyncItem> get items => _$this._items ??= ListBuilder<SyncItem>();
  set items(ListBuilder<SyncItem>? items) => _$this._items = items;

  SyncItemsRequestBuilder() {
    SyncItemsRequest._defaults(this);
  }

  SyncItemsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncItemsRequest other) {
    _$v = other as _$SyncItemsRequest;
  }

  @override
  void update(void Function(SyncItemsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncItemsRequest build() => _build();

  _$SyncItemsRequest _build() {
    _$SyncItemsRequest _$result;
    try {
      _$result = _$v ??
          _$SyncItemsRequest._(
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SyncItemsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
