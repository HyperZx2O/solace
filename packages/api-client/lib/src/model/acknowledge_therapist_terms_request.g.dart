// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acknowledge_therapist_terms_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcknowledgeTherapistTermsRequest
    extends AcknowledgeTherapistTermsRequest {
  @override
  final bool dsa;
  @override
  final bool crisisResponsibilities;
  @override
  final bool emergencyStatement;

  factory _$AcknowledgeTherapistTermsRequest(
          [void Function(AcknowledgeTherapistTermsRequestBuilder)? updates]) =>
      (AcknowledgeTherapistTermsRequestBuilder()..update(updates))._build();

  _$AcknowledgeTherapistTermsRequest._(
      {required this.dsa,
      required this.crisisResponsibilities,
      required this.emergencyStatement})
      : super._();
  @override
  AcknowledgeTherapistTermsRequest rebuild(
          void Function(AcknowledgeTherapistTermsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcknowledgeTherapistTermsRequestBuilder toBuilder() =>
      AcknowledgeTherapistTermsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcknowledgeTherapistTermsRequest &&
        dsa == other.dsa &&
        crisisResponsibilities == other.crisisResponsibilities &&
        emergencyStatement == other.emergencyStatement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dsa.hashCode);
    _$hash = $jc(_$hash, crisisResponsibilities.hashCode);
    _$hash = $jc(_$hash, emergencyStatement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AcknowledgeTherapistTermsRequest')
          ..add('dsa', dsa)
          ..add('crisisResponsibilities', crisisResponsibilities)
          ..add('emergencyStatement', emergencyStatement))
        .toString();
  }
}

class AcknowledgeTherapistTermsRequestBuilder
    implements
        Builder<AcknowledgeTherapistTermsRequest,
            AcknowledgeTherapistTermsRequestBuilder> {
  _$AcknowledgeTherapistTermsRequest? _$v;

  bool? _dsa;
  bool? get dsa => _$this._dsa;
  set dsa(bool? dsa) => _$this._dsa = dsa;

  bool? _crisisResponsibilities;
  bool? get crisisResponsibilities => _$this._crisisResponsibilities;
  set crisisResponsibilities(bool? crisisResponsibilities) =>
      _$this._crisisResponsibilities = crisisResponsibilities;

  bool? _emergencyStatement;
  bool? get emergencyStatement => _$this._emergencyStatement;
  set emergencyStatement(bool? emergencyStatement) =>
      _$this._emergencyStatement = emergencyStatement;

  AcknowledgeTherapistTermsRequestBuilder() {
    AcknowledgeTherapistTermsRequest._defaults(this);
  }

  AcknowledgeTherapistTermsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dsa = $v.dsa;
      _crisisResponsibilities = $v.crisisResponsibilities;
      _emergencyStatement = $v.emergencyStatement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcknowledgeTherapistTermsRequest other) {
    _$v = other as _$AcknowledgeTherapistTermsRequest;
  }

  @override
  void update(void Function(AcknowledgeTherapistTermsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcknowledgeTherapistTermsRequest build() => _build();

  _$AcknowledgeTherapistTermsRequest _build() {
    final _$result = _$v ??
        _$AcknowledgeTherapistTermsRequest._(
          dsa: BuiltValueNullFieldError.checkNotNull(
              dsa, r'AcknowledgeTherapistTermsRequest', 'dsa'),
          crisisResponsibilities: BuiltValueNullFieldError.checkNotNull(
              crisisResponsibilities,
              r'AcknowledgeTherapistTermsRequest',
              'crisisResponsibilities'),
          emergencyStatement: BuiltValueNullFieldError.checkNotNull(
              emergencyStatement,
              r'AcknowledgeTherapistTermsRequest',
              'emergencyStatement'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
