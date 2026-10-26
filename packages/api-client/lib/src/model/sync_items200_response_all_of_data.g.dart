// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_items200_response_all_of_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SyncItems200ResponseAllOfData extends SyncItems200ResponseAllOfData {
  @override
  final BuiltList<SyncResult> results;

  factory _$SyncItems200ResponseAllOfData(
          [void Function(SyncItems200ResponseAllOfDataBuilder)? updates]) =>
      (SyncItems200ResponseAllOfDataBuilder()..update(updates))._build();

  _$SyncItems200ResponseAllOfData._({required this.results}) : super._();
  @override
  SyncItems200ResponseAllOfData rebuild(
          void Function(SyncItems200ResponseAllOfDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncItems200ResponseAllOfDataBuilder toBuilder() =>
      SyncItems200ResponseAllOfDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncItems200ResponseAllOfData && results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SyncItems200ResponseAllOfData')
          ..add('results', results))
        .toString();
  }
}

class SyncItems200ResponseAllOfDataBuilder
    implements
        Builder<SyncItems200ResponseAllOfData,
            SyncItems200ResponseAllOfDataBuilder> {
  _$SyncItems200ResponseAllOfData? _$v;

  ListBuilder<SyncResult>? _results;
  ListBuilder<SyncResult> get results =>
      _$this._results ??= ListBuilder<SyncResult>();
  set results(ListBuilder<SyncResult>? results) => _$this._results = results;

  SyncItems200ResponseAllOfDataBuilder() {
    SyncItems200ResponseAllOfData._defaults(this);
  }

  SyncItems200ResponseAllOfDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncItems200ResponseAllOfData other) {
    _$v = other as _$SyncItems200ResponseAllOfData;
  }

  @override
  void update(void Function(SyncItems200ResponseAllOfDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncItems200ResponseAllOfData build() => _build();

  _$SyncItems200ResponseAllOfData _build() {
    _$SyncItems200ResponseAllOfData _$result;
    try {
      _$result = _$v ??
          _$SyncItems200ResponseAllOfData._(
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SyncItems200ResponseAllOfData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
