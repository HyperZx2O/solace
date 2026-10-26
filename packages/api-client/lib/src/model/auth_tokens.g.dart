// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthTokens extends AuthTokens {
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final int expiresIn;
  @override
  final Me user;

  factory _$AuthTokens([void Function(AuthTokensBuilder)? updates]) =>
      (AuthTokensBuilder()..update(updates))._build();

  _$AuthTokens._(
      {required this.accessToken,
      required this.refreshToken,
      required this.expiresIn,
      required this.user})
      : super._();
  @override
  AuthTokens rebuild(void Function(AuthTokensBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthTokensBuilder toBuilder() => AuthTokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthTokens &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expiresIn == other.expiresIn &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthTokens')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('expiresIn', expiresIn)
          ..add('user', user))
        .toString();
  }
}

class AuthTokensBuilder implements Builder<AuthTokens, AuthTokensBuilder> {
  _$AuthTokens? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  MeBuilder? _user;
  MeBuilder get user => _$this._user ??= MeBuilder();
  set user(MeBuilder? user) => _$this._user = user;

  AuthTokensBuilder() {
    AuthTokens._defaults(this);
  }

  AuthTokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _expiresIn = $v.expiresIn;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthTokens other) {
    _$v = other as _$AuthTokens;
  }

  @override
  void update(void Function(AuthTokensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthTokens build() => _build();

  _$AuthTokens _build() {
    _$AuthTokens _$result;
    try {
      _$result = _$v ??
          _$AuthTokens._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'AuthTokens', 'accessToken'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'AuthTokens', 'refreshToken'),
            expiresIn: BuiltValueNullFieldError.checkNotNull(
                expiresIn, r'AuthTokens', 'expiresIn'),
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AuthTokens', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
