// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_crisis_monitoring_withdrawal_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartCrisisMonitoringWithdrawalRequest
    extends StartCrisisMonitoringWithdrawalRequest {
  @override
  final String clientId;

  factory _$StartCrisisMonitoringWithdrawalRequest(
          [void Function(StartCrisisMonitoringWithdrawalRequestBuilder)?
              updates]) =>
      (StartCrisisMonitoringWithdrawalRequestBuilder()..update(updates))
          ._build();

  _$StartCrisisMonitoringWithdrawalRequest._({required this.clientId})
      : super._();
  @override
  StartCrisisMonitoringWithdrawalRequest rebuild(
          void Function(StartCrisisMonitoringWithdrawalRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartCrisisMonitoringWithdrawalRequestBuilder toBuilder() =>
      StartCrisisMonitoringWithdrawalRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartCrisisMonitoringWithdrawalRequest &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'StartCrisisMonitoringWithdrawalRequest')
          ..add('clientId', clientId))
        .toString();
  }
}

class StartCrisisMonitoringWithdrawalRequestBuilder
    implements
        Builder<StartCrisisMonitoringWithdrawalRequest,
            StartCrisisMonitoringWithdrawalRequestBuilder> {
  _$StartCrisisMonitoringWithdrawalRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  StartCrisisMonitoringWithdrawalRequestBuilder() {
    StartCrisisMonitoringWithdrawalRequest._defaults(this);
  }

  StartCrisisMonitoringWithdrawalRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartCrisisMonitoringWithdrawalRequest other) {
    _$v = other as _$StartCrisisMonitoringWithdrawalRequest;
  }

  @override
  void update(
      void Function(StartCrisisMonitoringWithdrawalRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartCrisisMonitoringWithdrawalRequest build() => _build();

  _$StartCrisisMonitoringWithdrawalRequest _build() {
    final _$result = _$v ??
        _$StartCrisisMonitoringWithdrawalRequest._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'StartCrisisMonitoringWithdrawalRequest', 'clientId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
