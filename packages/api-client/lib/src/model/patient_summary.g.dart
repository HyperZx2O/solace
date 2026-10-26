// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatientSummary extends PatientSummary {
  @override
  final String patientId;
  @override
  final String body;
  @override
  final String disclaimer;
  @override
  final DateTime generatedAt;

  factory _$PatientSummary([void Function(PatientSummaryBuilder)? updates]) =>
      (PatientSummaryBuilder()..update(updates))._build();

  _$PatientSummary._(
      {required this.patientId,
      required this.body,
      required this.disclaimer,
      required this.generatedAt})
      : super._();
  @override
  PatientSummary rebuild(void Function(PatientSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientSummaryBuilder toBuilder() => PatientSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientSummary &&
        patientId == other.patientId &&
        body == other.body &&
        disclaimer == other.disclaimer &&
        generatedAt == other.generatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, disclaimer.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientSummary')
          ..add('patientId', patientId)
          ..add('body', body)
          ..add('disclaimer', disclaimer)
          ..add('generatedAt', generatedAt))
        .toString();
  }
}

class PatientSummaryBuilder
    implements Builder<PatientSummary, PatientSummaryBuilder> {
  _$PatientSummary? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _disclaimer;
  String? get disclaimer => _$this._disclaimer;
  set disclaimer(String? disclaimer) => _$this._disclaimer = disclaimer;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  PatientSummaryBuilder() {
    PatientSummary._defaults(this);
  }

  PatientSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _body = $v.body;
      _disclaimer = $v.disclaimer;
      _generatedAt = $v.generatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientSummary other) {
    _$v = other as _$PatientSummary;
  }

  @override
  void update(void Function(PatientSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientSummary build() => _build();

  _$PatientSummary _build() {
    final _$result = _$v ??
        _$PatientSummary._(
          patientId: BuiltValueNullFieldError.checkNotNull(
              patientId, r'PatientSummary', 'patientId'),
          body: BuiltValueNullFieldError.checkNotNull(
              body, r'PatientSummary', 'body'),
          disclaimer: BuiltValueNullFieldError.checkNotNull(
              disclaimer, r'PatientSummary', 'disclaimer'),
          generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt, r'PatientSummary', 'generatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
