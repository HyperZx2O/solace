// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_onboarding_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TherapistOnboardingRequest extends TherapistOnboardingRequest {
  @override
  final String licenceNumber;
  @override
  final String professionalBody;
  @override
  final String countryOfPractice;
  @override
  final String? password;

  factory _$TherapistOnboardingRequest(
          [void Function(TherapistOnboardingRequestBuilder)? updates]) =>
      (TherapistOnboardingRequestBuilder()..update(updates))._build();

  _$TherapistOnboardingRequest._(
      {required this.licenceNumber,
      required this.professionalBody,
      required this.countryOfPractice,
      this.password})
      : super._();
  @override
  TherapistOnboardingRequest rebuild(
          void Function(TherapistOnboardingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TherapistOnboardingRequestBuilder toBuilder() =>
      TherapistOnboardingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TherapistOnboardingRequest &&
        licenceNumber == other.licenceNumber &&
        professionalBody == other.professionalBody &&
        countryOfPractice == other.countryOfPractice &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licenceNumber.hashCode);
    _$hash = $jc(_$hash, professionalBody.hashCode);
    _$hash = $jc(_$hash, countryOfPractice.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TherapistOnboardingRequest')
          ..add('licenceNumber', licenceNumber)
          ..add('professionalBody', professionalBody)
          ..add('countryOfPractice', countryOfPractice)
          ..add('password', password))
        .toString();
  }
}

class TherapistOnboardingRequestBuilder
    implements
        Builder<TherapistOnboardingRequest, TherapistOnboardingRequestBuilder> {
  _$TherapistOnboardingRequest? _$v;

  String? _licenceNumber;
  String? get licenceNumber => _$this._licenceNumber;
  set licenceNumber(String? licenceNumber) =>
      _$this._licenceNumber = licenceNumber;

  String? _professionalBody;
  String? get professionalBody => _$this._professionalBody;
  set professionalBody(String? professionalBody) =>
      _$this._professionalBody = professionalBody;

  String? _countryOfPractice;
  String? get countryOfPractice => _$this._countryOfPractice;
  set countryOfPractice(String? countryOfPractice) =>
      _$this._countryOfPractice = countryOfPractice;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  TherapistOnboardingRequestBuilder() {
    TherapistOnboardingRequest._defaults(this);
  }

  TherapistOnboardingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenceNumber = $v.licenceNumber;
      _professionalBody = $v.professionalBody;
      _countryOfPractice = $v.countryOfPractice;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TherapistOnboardingRequest other) {
    _$v = other as _$TherapistOnboardingRequest;
  }

  @override
  void update(void Function(TherapistOnboardingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TherapistOnboardingRequest build() => _build();

  _$TherapistOnboardingRequest _build() {
    final _$result = _$v ??
        _$TherapistOnboardingRequest._(
          licenceNumber: BuiltValueNullFieldError.checkNotNull(
              licenceNumber, r'TherapistOnboardingRequest', 'licenceNumber'),
          professionalBody: BuiltValueNullFieldError.checkNotNull(
              professionalBody,
              r'TherapistOnboardingRequest',
              'professionalBody'),
          countryOfPractice: BuiltValueNullFieldError.checkNotNull(
              countryOfPractice,
              r'TherapistOnboardingRequest',
              'countryOfPractice'),
          password: password,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
