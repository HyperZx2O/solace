// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invite_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInviteRequest extends CreateInviteRequest {
  @override
  final String therapistEmail;
  @override
  final String patientFirstName;

  factory _$CreateInviteRequest(
          [void Function(CreateInviteRequestBuilder)? updates]) =>
      (CreateInviteRequestBuilder()..update(updates))._build();

  _$CreateInviteRequest._(
      {required this.therapistEmail, required this.patientFirstName})
      : super._();
  @override
  CreateInviteRequest rebuild(
          void Function(CreateInviteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInviteRequestBuilder toBuilder() =>
      CreateInviteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInviteRequest &&
        therapistEmail == other.therapistEmail &&
        patientFirstName == other.patientFirstName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, therapistEmail.hashCode);
    _$hash = $jc(_$hash, patientFirstName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateInviteRequest')
          ..add('therapistEmail', therapistEmail)
          ..add('patientFirstName', patientFirstName))
        .toString();
  }
}

class CreateInviteRequestBuilder
    implements Builder<CreateInviteRequest, CreateInviteRequestBuilder> {
  _$CreateInviteRequest? _$v;

  String? _therapistEmail;
  String? get therapistEmail => _$this._therapistEmail;
  set therapistEmail(String? therapistEmail) =>
      _$this._therapistEmail = therapistEmail;

  String? _patientFirstName;
  String? get patientFirstName => _$this._patientFirstName;
  set patientFirstName(String? patientFirstName) =>
      _$this._patientFirstName = patientFirstName;

  CreateInviteRequestBuilder() {
    CreateInviteRequest._defaults(this);
  }

  CreateInviteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _therapistEmail = $v.therapistEmail;
      _patientFirstName = $v.patientFirstName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInviteRequest other) {
    _$v = other as _$CreateInviteRequest;
  }

  @override
  void update(void Function(CreateInviteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInviteRequest build() => _build();

  _$CreateInviteRequest _build() {
    final _$result = _$v ??
        _$CreateInviteRequest._(
          therapistEmail: BuiltValueNullFieldError.checkNotNull(
              therapistEmail, r'CreateInviteRequest', 'therapistEmail'),
          patientFirstName: BuiltValueNullFieldError.checkNotNull(
              patientFirstName, r'CreateInviteRequest', 'patientFirstName'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
