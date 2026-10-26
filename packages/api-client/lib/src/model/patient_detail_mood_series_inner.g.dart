// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_detail_mood_series_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatientDetailMoodSeriesInner extends PatientDetailMoodSeriesInner {
  @override
  final Date? date;
  @override
  final int? mood;

  factory _$PatientDetailMoodSeriesInner(
          [void Function(PatientDetailMoodSeriesInnerBuilder)? updates]) =>
      (PatientDetailMoodSeriesInnerBuilder()..update(updates))._build();

  _$PatientDetailMoodSeriesInner._({this.date, this.mood}) : super._();
  @override
  PatientDetailMoodSeriesInner rebuild(
          void Function(PatientDetailMoodSeriesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientDetailMoodSeriesInnerBuilder toBuilder() =>
      PatientDetailMoodSeriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientDetailMoodSeriesInner &&
        date == other.date &&
        mood == other.mood;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, mood.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientDetailMoodSeriesInner')
          ..add('date', date)
          ..add('mood', mood))
        .toString();
  }
}

class PatientDetailMoodSeriesInnerBuilder
    implements
        Builder<PatientDetailMoodSeriesInner,
            PatientDetailMoodSeriesInnerBuilder> {
  _$PatientDetailMoodSeriesInner? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _mood;
  int? get mood => _$this._mood;
  set mood(int? mood) => _$this._mood = mood;

  PatientDetailMoodSeriesInnerBuilder() {
    PatientDetailMoodSeriesInner._defaults(this);
  }

  PatientDetailMoodSeriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _mood = $v.mood;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientDetailMoodSeriesInner other) {
    _$v = other as _$PatientDetailMoodSeriesInner;
  }

  @override
  void update(void Function(PatientDetailMoodSeriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientDetailMoodSeriesInner build() => _build();

  _$PatientDetailMoodSeriesInner _build() {
    final _$result = _$v ??
        _$PatientDetailMoodSeriesInner._(
          date: date,
          mood: mood,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
