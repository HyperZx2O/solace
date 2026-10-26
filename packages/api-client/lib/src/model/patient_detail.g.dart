// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatientDetailJournalSentimentEnum
    _$patientDetailJournalSentimentEnum_positive =
    const PatientDetailJournalSentimentEnum._('positive');
const PatientDetailJournalSentimentEnum
    _$patientDetailJournalSentimentEnum_neutral =
    const PatientDetailJournalSentimentEnum._('neutral');
const PatientDetailJournalSentimentEnum
    _$patientDetailJournalSentimentEnum_negative =
    const PatientDetailJournalSentimentEnum._('negative');
const PatientDetailJournalSentimentEnum
    _$patientDetailJournalSentimentEnum_crisis =
    const PatientDetailJournalSentimentEnum._('crisis');

PatientDetailJournalSentimentEnum _$patientDetailJournalSentimentEnumValueOf(
    String name) {
  switch (name) {
    case 'positive':
      return _$patientDetailJournalSentimentEnum_positive;
    case 'neutral':
      return _$patientDetailJournalSentimentEnum_neutral;
    case 'negative':
      return _$patientDetailJournalSentimentEnum_negative;
    case 'crisis':
      return _$patientDetailJournalSentimentEnum_crisis;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatientDetailJournalSentimentEnum>
    _$patientDetailJournalSentimentEnumValues = BuiltSet<
        PatientDetailJournalSentimentEnum>(const <PatientDetailJournalSentimentEnum>[
  _$patientDetailJournalSentimentEnum_positive,
  _$patientDetailJournalSentimentEnum_neutral,
  _$patientDetailJournalSentimentEnum_negative,
  _$patientDetailJournalSentimentEnum_crisis,
]);

Serializer<PatientDetailJournalSentimentEnum>
    _$patientDetailJournalSentimentEnumSerializer =
    _$PatientDetailJournalSentimentEnumSerializer();

class _$PatientDetailJournalSentimentEnumSerializer
    implements PrimitiveSerializer<PatientDetailJournalSentimentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'positive': 'positive',
    'neutral': 'neutral',
    'negative': 'negative',
    'crisis': 'crisis',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'positive': 'positive',
    'neutral': 'neutral',
    'negative': 'negative',
    'crisis': 'crisis',
  };

  @override
  final Iterable<Type> types = const <Type>[PatientDetailJournalSentimentEnum];
  @override
  final String wireName = 'PatientDetailJournalSentimentEnum';

  @override
  Object serialize(
          Serializers serializers, PatientDetailJournalSentimentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatientDetailJournalSentimentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatientDetailJournalSentimentEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatientDetail extends PatientDetail {
  @override
  final String patientId;
  @override
  final String displayName;
  @override
  final DateTime connectedSince;
  @override
  final BuiltList<PatientDetailMoodSeriesInner>? moodSeries;
  @override
  final num? taskCompletionRate;
  @override
  final PatientDetailJournalSentimentEnum? journalSentiment;

  factory _$PatientDetail([void Function(PatientDetailBuilder)? updates]) =>
      (PatientDetailBuilder()..update(updates))._build();

  _$PatientDetail._(
      {required this.patientId,
      required this.displayName,
      required this.connectedSince,
      this.moodSeries,
      this.taskCompletionRate,
      this.journalSentiment})
      : super._();
  @override
  PatientDetail rebuild(void Function(PatientDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientDetailBuilder toBuilder() => PatientDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientDetail &&
        patientId == other.patientId &&
        displayName == other.displayName &&
        connectedSince == other.connectedSince &&
        moodSeries == other.moodSeries &&
        taskCompletionRate == other.taskCompletionRate &&
        journalSentiment == other.journalSentiment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, connectedSince.hashCode);
    _$hash = $jc(_$hash, moodSeries.hashCode);
    _$hash = $jc(_$hash, taskCompletionRate.hashCode);
    _$hash = $jc(_$hash, journalSentiment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientDetail')
          ..add('patientId', patientId)
          ..add('displayName', displayName)
          ..add('connectedSince', connectedSince)
          ..add('moodSeries', moodSeries)
          ..add('taskCompletionRate', taskCompletionRate)
          ..add('journalSentiment', journalSentiment))
        .toString();
  }
}

class PatientDetailBuilder
    implements Builder<PatientDetail, PatientDetailBuilder> {
  _$PatientDetail? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DateTime? _connectedSince;
  DateTime? get connectedSince => _$this._connectedSince;
  set connectedSince(DateTime? connectedSince) =>
      _$this._connectedSince = connectedSince;

  ListBuilder<PatientDetailMoodSeriesInner>? _moodSeries;
  ListBuilder<PatientDetailMoodSeriesInner> get moodSeries =>
      _$this._moodSeries ??= ListBuilder<PatientDetailMoodSeriesInner>();
  set moodSeries(ListBuilder<PatientDetailMoodSeriesInner>? moodSeries) =>
      _$this._moodSeries = moodSeries;

  num? _taskCompletionRate;
  num? get taskCompletionRate => _$this._taskCompletionRate;
  set taskCompletionRate(num? taskCompletionRate) =>
      _$this._taskCompletionRate = taskCompletionRate;

  PatientDetailJournalSentimentEnum? _journalSentiment;
  PatientDetailJournalSentimentEnum? get journalSentiment =>
      _$this._journalSentiment;
  set journalSentiment(PatientDetailJournalSentimentEnum? journalSentiment) =>
      _$this._journalSentiment = journalSentiment;

  PatientDetailBuilder() {
    PatientDetail._defaults(this);
  }

  PatientDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _displayName = $v.displayName;
      _connectedSince = $v.connectedSince;
      _moodSeries = $v.moodSeries?.toBuilder();
      _taskCompletionRate = $v.taskCompletionRate;
      _journalSentiment = $v.journalSentiment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientDetail other) {
    _$v = other as _$PatientDetail;
  }

  @override
  void update(void Function(PatientDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientDetail build() => _build();

  _$PatientDetail _build() {
    _$PatientDetail _$result;
    try {
      _$result = _$v ??
          _$PatientDetail._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'PatientDetail', 'patientId'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'PatientDetail', 'displayName'),
            connectedSince: BuiltValueNullFieldError.checkNotNull(
                connectedSince, r'PatientDetail', 'connectedSince'),
            moodSeries: _moodSeries?.build(),
            taskCompletionRate: taskCompletionRate,
            journalSentiment: journalSentiment,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moodSeries';
        _moodSeries?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatientDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
