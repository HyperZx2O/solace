// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_therapist_patients200_response_all_of_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTherapistPatients200ResponseAllOfData
    extends ListTherapistPatients200ResponseAllOfData {
  @override
  final BuiltList<PatientCard>? needsAttention;
  @override
  final BuiltList<PatientCard>? checkInWhenYouCan;
  @override
  final BuiltList<PatientCard>? progressingWell;
  @override
  final BuiltList<PatientCard>? noRecentActivity;

  factory _$ListTherapistPatients200ResponseAllOfData(
          [void Function(ListTherapistPatients200ResponseAllOfDataBuilder)?
              updates]) =>
      (ListTherapistPatients200ResponseAllOfDataBuilder()..update(updates))
          ._build();

  _$ListTherapistPatients200ResponseAllOfData._(
      {this.needsAttention,
      this.checkInWhenYouCan,
      this.progressingWell,
      this.noRecentActivity})
      : super._();
  @override
  ListTherapistPatients200ResponseAllOfData rebuild(
          void Function(ListTherapistPatients200ResponseAllOfDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTherapistPatients200ResponseAllOfDataBuilder toBuilder() =>
      ListTherapistPatients200ResponseAllOfDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTherapistPatients200ResponseAllOfData &&
        needsAttention == other.needsAttention &&
        checkInWhenYouCan == other.checkInWhenYouCan &&
        progressingWell == other.progressingWell &&
        noRecentActivity == other.noRecentActivity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, needsAttention.hashCode);
    _$hash = $jc(_$hash, checkInWhenYouCan.hashCode);
    _$hash = $jc(_$hash, progressingWell.hashCode);
    _$hash = $jc(_$hash, noRecentActivity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ListTherapistPatients200ResponseAllOfData')
          ..add('needsAttention', needsAttention)
          ..add('checkInWhenYouCan', checkInWhenYouCan)
          ..add('progressingWell', progressingWell)
          ..add('noRecentActivity', noRecentActivity))
        .toString();
  }
}

class ListTherapistPatients200ResponseAllOfDataBuilder
    implements
        Builder<ListTherapistPatients200ResponseAllOfData,
            ListTherapistPatients200ResponseAllOfDataBuilder> {
  _$ListTherapistPatients200ResponseAllOfData? _$v;

  ListBuilder<PatientCard>? _needsAttention;
  ListBuilder<PatientCard> get needsAttention =>
      _$this._needsAttention ??= ListBuilder<PatientCard>();
  set needsAttention(ListBuilder<PatientCard>? needsAttention) =>
      _$this._needsAttention = needsAttention;

  ListBuilder<PatientCard>? _checkInWhenYouCan;
  ListBuilder<PatientCard> get checkInWhenYouCan =>
      _$this._checkInWhenYouCan ??= ListBuilder<PatientCard>();
  set checkInWhenYouCan(ListBuilder<PatientCard>? checkInWhenYouCan) =>
      _$this._checkInWhenYouCan = checkInWhenYouCan;

  ListBuilder<PatientCard>? _progressingWell;
  ListBuilder<PatientCard> get progressingWell =>
      _$this._progressingWell ??= ListBuilder<PatientCard>();
  set progressingWell(ListBuilder<PatientCard>? progressingWell) =>
      _$this._progressingWell = progressingWell;

  ListBuilder<PatientCard>? _noRecentActivity;
  ListBuilder<PatientCard> get noRecentActivity =>
      _$this._noRecentActivity ??= ListBuilder<PatientCard>();
  set noRecentActivity(ListBuilder<PatientCard>? noRecentActivity) =>
      _$this._noRecentActivity = noRecentActivity;

  ListTherapistPatients200ResponseAllOfDataBuilder() {
    ListTherapistPatients200ResponseAllOfData._defaults(this);
  }

  ListTherapistPatients200ResponseAllOfDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _needsAttention = $v.needsAttention?.toBuilder();
      _checkInWhenYouCan = $v.checkInWhenYouCan?.toBuilder();
      _progressingWell = $v.progressingWell?.toBuilder();
      _noRecentActivity = $v.noRecentActivity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTherapistPatients200ResponseAllOfData other) {
    _$v = other as _$ListTherapistPatients200ResponseAllOfData;
  }

  @override
  void update(
      void Function(ListTherapistPatients200ResponseAllOfDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTherapistPatients200ResponseAllOfData build() => _build();

  _$ListTherapistPatients200ResponseAllOfData _build() {
    _$ListTherapistPatients200ResponseAllOfData _$result;
    try {
      _$result = _$v ??
          _$ListTherapistPatients200ResponseAllOfData._(
            needsAttention: _needsAttention?.build(),
            checkInWhenYouCan: _checkInWhenYouCan?.build(),
            progressingWell: _progressingWell?.build(),
            noRecentActivity: _noRecentActivity?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'needsAttention';
        _needsAttention?.build();
        _$failedField = 'checkInWhenYouCan';
        _checkInWhenYouCan?.build();
        _$failedField = 'progressingWell';
        _progressingWell?.build();
        _$failedField = 'noRecentActivity';
        _noRecentActivity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListTherapistPatients200ResponseAllOfData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
