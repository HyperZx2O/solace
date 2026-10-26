// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'self_initiated_crisis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelfInitiatedCrisisRequest extends SelfInitiatedCrisisRequest {
  @override
  final String clientId;
  @override
  final DateTime? clientCreatedAt;

  factory _$SelfInitiatedCrisisRequest(
          [void Function(SelfInitiatedCrisisRequestBuilder)? updates]) =>
      (SelfInitiatedCrisisRequestBuilder()..update(updates))._build();

  _$SelfInitiatedCrisisRequest._({required this.clientId, this.clientCreatedAt})
      : super._();
  @override
  SelfInitiatedCrisisRequest rebuild(
          void Function(SelfInitiatedCrisisRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelfInitiatedCrisisRequestBuilder toBuilder() =>
      SelfInitiatedCrisisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelfInitiatedCrisisRequest &&
        clientId == other.clientId &&
        clientCreatedAt == other.clientCreatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientCreatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelfInitiatedCrisisRequest')
          ..add('clientId', clientId)
          ..add('clientCreatedAt', clientCreatedAt))
        .toString();
  }
}

class SelfInitiatedCrisisRequestBuilder
    implements
        Builder<SelfInitiatedCrisisRequest, SelfInitiatedCrisisRequestBuilder> {
  _$SelfInitiatedCrisisRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  DateTime? _clientCreatedAt;
  DateTime? get clientCreatedAt => _$this._clientCreatedAt;
  set clientCreatedAt(DateTime? clientCreatedAt) =>
      _$this._clientCreatedAt = clientCreatedAt;

  SelfInitiatedCrisisRequestBuilder() {
    SelfInitiatedCrisisRequest._defaults(this);
  }

  SelfInitiatedCrisisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientCreatedAt = $v.clientCreatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelfInitiatedCrisisRequest other) {
    _$v = other as _$SelfInitiatedCrisisRequest;
  }

  @override
  void update(void Function(SelfInitiatedCrisisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelfInitiatedCrisisRequest build() => _build();

  _$SelfInitiatedCrisisRequest _build() {
    final _$result = _$v ??
        _$SelfInitiatedCrisisRequest._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'SelfInitiatedCrisisRequest', 'clientId'),
          clientCreatedAt: clientCreatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
