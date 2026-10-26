// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pause_processing_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PauseProcessingRequest extends PauseProcessingRequest {
  @override
  final bool paused;

  factory _$PauseProcessingRequest(
          [void Function(PauseProcessingRequestBuilder)? updates]) =>
      (PauseProcessingRequestBuilder()..update(updates))._build();

  _$PauseProcessingRequest._({required this.paused}) : super._();
  @override
  PauseProcessingRequest rebuild(
          void Function(PauseProcessingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PauseProcessingRequestBuilder toBuilder() =>
      PauseProcessingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PauseProcessingRequest && paused == other.paused;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paused.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PauseProcessingRequest')
          ..add('paused', paused))
        .toString();
  }
}

class PauseProcessingRequestBuilder
    implements Builder<PauseProcessingRequest, PauseProcessingRequestBuilder> {
  _$PauseProcessingRequest? _$v;

  bool? _paused;
  bool? get paused => _$this._paused;
  set paused(bool? paused) => _$this._paused = paused;

  PauseProcessingRequestBuilder() {
    PauseProcessingRequest._defaults(this);
  }

  PauseProcessingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paused = $v.paused;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PauseProcessingRequest other) {
    _$v = other as _$PauseProcessingRequest;
  }

  @override
  void update(void Function(PauseProcessingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PauseProcessingRequest build() => _build();

  _$PauseProcessingRequest _build() {
    final _$result = _$v ??
        _$PauseProcessingRequest._(
          paused: BuiltValueNullFieldError.checkNotNull(
              paused, r'PauseProcessingRequest', 'paused'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
