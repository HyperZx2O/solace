// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TherapistProfileVerificationStatusEnum
    _$therapistProfileVerificationStatusEnum_pending =
    const TherapistProfileVerificationStatusEnum._('pending');
const TherapistProfileVerificationStatusEnum
    _$therapistProfileVerificationStatusEnum_verified =
    const TherapistProfileVerificationStatusEnum._('verified');
const TherapistProfileVerificationStatusEnum
    _$therapistProfileVerificationStatusEnum_expiredGrace =
    const TherapistProfileVerificationStatusEnum._('expiredGrace');
const TherapistProfileVerificationStatusEnum
    _$therapistProfileVerificationStatusEnum_suspended =
    const TherapistProfileVerificationStatusEnum._('suspended');
const TherapistProfileVerificationStatusEnum
    _$therapistProfileVerificationStatusEnum_revoked =
    const TherapistProfileVerificationStatusEnum._('revoked');

TherapistProfileVerificationStatusEnum
    _$therapistProfileVerificationStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$therapistProfileVerificationStatusEnum_pending;
    case 'verified':
      return _$therapistProfileVerificationStatusEnum_verified;
    case 'expiredGrace':
      return _$therapistProfileVerificationStatusEnum_expiredGrace;
    case 'suspended':
      return _$therapistProfileVerificationStatusEnum_suspended;
    case 'revoked':
      return _$therapistProfileVerificationStatusEnum_revoked;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TherapistProfileVerificationStatusEnum>
    _$therapistProfileVerificationStatusEnumValues = BuiltSet<
        TherapistProfileVerificationStatusEnum>(const <TherapistProfileVerificationStatusEnum>[
  _$therapistProfileVerificationStatusEnum_pending,
  _$therapistProfileVerificationStatusEnum_verified,
  _$therapistProfileVerificationStatusEnum_expiredGrace,
  _$therapistProfileVerificationStatusEnum_suspended,
  _$therapistProfileVerificationStatusEnum_revoked,
]);

Serializer<TherapistProfileVerificationStatusEnum>
    _$therapistProfileVerificationStatusEnumSerializer =
    _$TherapistProfileVerificationStatusEnumSerializer();

class _$TherapistProfileVerificationStatusEnumSerializer
    implements PrimitiveSerializer<TherapistProfileVerificationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'verified': 'verified',
    'expiredGrace': 'expired_grace',
    'suspended': 'suspended',
    'revoked': 'revoked',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'verified': 'verified',
    'expired_grace': 'expiredGrace',
    'suspended': 'suspended',
    'revoked': 'revoked',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TherapistProfileVerificationStatusEnum
  ];
  @override
  final String wireName = 'TherapistProfileVerificationStatusEnum';

  @override
  Object serialize(Serializers serializers,
          TherapistProfileVerificationStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TherapistProfileVerificationStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TherapistProfileVerificationStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TherapistProfile extends TherapistProfile {
  @override
  final String id;
  @override
  final TherapistProfileVerificationStatusEnum verificationStatus;
  @override
  final String professionalBody;
  @override
  final String countryOfPractice;
  @override
  final DateTime? verifiedAt;
  @override
  final DateTime? expiresAt;
  @override
  final bool? mfaEnabled;

  factory _$TherapistProfile(
          [void Function(TherapistProfileBuilder)? updates]) =>
      (TherapistProfileBuilder()..update(updates))._build();

  _$TherapistProfile._(
      {required this.id,
      required this.verificationStatus,
      required this.professionalBody,
      required this.countryOfPractice,
      this.verifiedAt,
      this.expiresAt,
      this.mfaEnabled})
      : super._();
  @override
  TherapistProfile rebuild(void Function(TherapistProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TherapistProfileBuilder toBuilder() =>
      TherapistProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TherapistProfile &&
        id == other.id &&
        verificationStatus == other.verificationStatus &&
        professionalBody == other.professionalBody &&
        countryOfPractice == other.countryOfPractice &&
        verifiedAt == other.verifiedAt &&
        expiresAt == other.expiresAt &&
        mfaEnabled == other.mfaEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, verificationStatus.hashCode);
    _$hash = $jc(_$hash, professionalBody.hashCode);
    _$hash = $jc(_$hash, countryOfPractice.hashCode);
    _$hash = $jc(_$hash, verifiedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, mfaEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TherapistProfile')
          ..add('id', id)
          ..add('verificationStatus', verificationStatus)
          ..add('professionalBody', professionalBody)
          ..add('countryOfPractice', countryOfPractice)
          ..add('verifiedAt', verifiedAt)
          ..add('expiresAt', expiresAt)
          ..add('mfaEnabled', mfaEnabled))
        .toString();
  }
}

class TherapistProfileBuilder
    implements Builder<TherapistProfile, TherapistProfileBuilder> {
  _$TherapistProfile? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TherapistProfileVerificationStatusEnum? _verificationStatus;
  TherapistProfileVerificationStatusEnum? get verificationStatus =>
      _$this._verificationStatus;
  set verificationStatus(
          TherapistProfileVerificationStatusEnum? verificationStatus) =>
      _$this._verificationStatus = verificationStatus;

  String? _professionalBody;
  String? get professionalBody => _$this._professionalBody;
  set professionalBody(String? professionalBody) =>
      _$this._professionalBody = professionalBody;

  String? _countryOfPractice;
  String? get countryOfPractice => _$this._countryOfPractice;
  set countryOfPractice(String? countryOfPractice) =>
      _$this._countryOfPractice = countryOfPractice;

  DateTime? _verifiedAt;
  DateTime? get verifiedAt => _$this._verifiedAt;
  set verifiedAt(DateTime? verifiedAt) => _$this._verifiedAt = verifiedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  bool? _mfaEnabled;
  bool? get mfaEnabled => _$this._mfaEnabled;
  set mfaEnabled(bool? mfaEnabled) => _$this._mfaEnabled = mfaEnabled;

  TherapistProfileBuilder() {
    TherapistProfile._defaults(this);
  }

  TherapistProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _verificationStatus = $v.verificationStatus;
      _professionalBody = $v.professionalBody;
      _countryOfPractice = $v.countryOfPractice;
      _verifiedAt = $v.verifiedAt;
      _expiresAt = $v.expiresAt;
      _mfaEnabled = $v.mfaEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TherapistProfile other) {
    _$v = other as _$TherapistProfile;
  }

  @override
  void update(void Function(TherapistProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TherapistProfile build() => _build();

  _$TherapistProfile _build() {
    final _$result = _$v ??
        _$TherapistProfile._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TherapistProfile', 'id'),
          verificationStatus: BuiltValueNullFieldError.checkNotNull(
              verificationStatus, r'TherapistProfile', 'verificationStatus'),
          professionalBody: BuiltValueNullFieldError.checkNotNull(
              professionalBody, r'TherapistProfile', 'professionalBody'),
          countryOfPractice: BuiltValueNullFieldError.checkNotNull(
              countryOfPractice, r'TherapistProfile', 'countryOfPractice'),
          verifiedAt: verifiedAt,
          expiresAt: expiresAt,
          mfaEnabled: mfaEnabled,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
