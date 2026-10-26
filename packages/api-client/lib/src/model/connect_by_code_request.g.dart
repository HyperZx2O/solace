// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect_by_code_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConnectByCodeRequest extends ConnectByCodeRequest {
  @override
  final String code;

  factory _$ConnectByCodeRequest(
          [void Function(ConnectByCodeRequestBuilder)? updates]) =>
      (ConnectByCodeRequestBuilder()..update(updates))._build();

  _$ConnectByCodeRequest._({required this.code}) : super._();
  @override
  ConnectByCodeRequest rebuild(
          void Function(ConnectByCodeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnectByCodeRequestBuilder toBuilder() =>
      ConnectByCodeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConnectByCodeRequest && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConnectByCodeRequest')
          ..add('code', code))
        .toString();
  }
}

class ConnectByCodeRequestBuilder
    implements Builder<ConnectByCodeRequest, ConnectByCodeRequestBuilder> {
  _$ConnectByCodeRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ConnectByCodeRequestBuilder() {
    ConnectByCodeRequest._defaults(this);
  }

  ConnectByCodeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConnectByCodeRequest other) {
    _$v = other as _$ConnectByCodeRequest;
  }

  @override
  void update(void Function(ConnectByCodeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConnectByCodeRequest build() => _build();

  _$ConnectByCodeRequest _build() {
    final _$result = _$v ??
        _$ConnectByCodeRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'ConnectByCodeRequest', 'code'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
