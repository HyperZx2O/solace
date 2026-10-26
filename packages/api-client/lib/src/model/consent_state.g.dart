// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsentStateSource_Enum _$consentStateSourceEnum_onboarding =
    const ConsentStateSource_Enum._('onboarding');
const ConsentStateSource_Enum _$consentStateSourceEnum_settings =
    const ConsentStateSource_Enum._('settings');
const ConsentStateSource_Enum _$consentStateSourceEnum_withdrawalConfirmed =
    const ConsentStateSource_Enum._('withdrawalConfirmed');

ConsentStateSource_Enum _$consentStateSourceEnumValueOf(String name) {
  switch (name) {
    case 'onboarding':
      return _$consentStateSourceEnum_onboarding;
    case 'settings':
      return _$consentStateSourceEnum_settings;
    case 'withdrawalConfirmed':
      return _$consentStateSourceEnum_withdrawalConfirmed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsentStateSource_Enum> _$consentStateSourceEnumValues =
    BuiltSet<ConsentStateSource_Enum>(const <ConsentStateSource_Enum>[
  _$consentStateSourceEnum_onboarding,
  _$consentStateSourceEnum_settings,
  _$consentStateSourceEnum_withdrawalConfirmed,
]);

Serializer<ConsentStateSource_Enum> _$consentStateSourceEnumSerializer =
    _$ConsentStateSource_EnumSerializer();

class _$ConsentStateSource_EnumSerializer
    implements PrimitiveSerializer<ConsentStateSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'onboarding': 'onboarding',
    'settings': 'settings',
    'withdrawalConfirmed': 'withdrawal_confirmed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'onboarding': 'onboarding',
    'settings': 'settings',
    'withdrawal_confirmed': 'withdrawalConfirmed',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsentStateSource_Enum];
  @override
  final String wireName = 'ConsentStateSource_Enum';

  @override
  Object serialize(Serializers serializers, ConsentStateSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsentStateSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsentStateSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsentState extends ConsentState {
  @override
  final ConsentItem item;
  @override
  final bool granted;
  @override
  final ConsentStateSource_Enum source_;
  @override
  final String? appVersion;
  @override
  final DateTime recordedAt;

  factory _$ConsentState([void Function(ConsentStateBuilder)? updates]) =>
      (ConsentStateBuilder()..update(updates))._build();

  _$ConsentState._(
      {required this.item,
      required this.granted,
      required this.source_,
      this.appVersion,
      required this.recordedAt})
      : super._();
  @override
  ConsentState rebuild(void Function(ConsentStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsentStateBuilder toBuilder() => ConsentStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsentState &&
        item == other.item &&
        granted == other.granted &&
        source_ == other.source_ &&
        appVersion == other.appVersion &&
        recordedAt == other.recordedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, granted.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, recordedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsentState')
          ..add('item', item)
          ..add('granted', granted)
          ..add('source_', source_)
          ..add('appVersion', appVersion)
          ..add('recordedAt', recordedAt))
        .toString();
  }
}

class ConsentStateBuilder
    implements Builder<ConsentState, ConsentStateBuilder> {
  _$ConsentState? _$v;

  ConsentItem? _item;
  ConsentItem? get item => _$this._item;
  set item(ConsentItem? item) => _$this._item = item;

  bool? _granted;
  bool? get granted => _$this._granted;
  set granted(bool? granted) => _$this._granted = granted;

  ConsentStateSource_Enum? _source_;
  ConsentStateSource_Enum? get source_ => _$this._source_;
  set source_(ConsentStateSource_Enum? source_) => _$this._source_ = source_;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  DateTime? _recordedAt;
  DateTime? get recordedAt => _$this._recordedAt;
  set recordedAt(DateTime? recordedAt) => _$this._recordedAt = recordedAt;

  ConsentStateBuilder() {
    ConsentState._defaults(this);
  }

  ConsentStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item;
      _granted = $v.granted;
      _source_ = $v.source_;
      _appVersion = $v.appVersion;
      _recordedAt = $v.recordedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsentState other) {
    _$v = other as _$ConsentState;
  }

  @override
  void update(void Function(ConsentStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsentState build() => _build();

  _$ConsentState _build() {
    final _$result = _$v ??
        _$ConsentState._(
          item: BuiltValueNullFieldError.checkNotNull(
              item, r'ConsentState', 'item'),
          granted: BuiltValueNullFieldError.checkNotNull(
              granted, r'ConsentState', 'granted'),
          source_: BuiltValueNullFieldError.checkNotNull(
              source_, r'ConsentState', 'source_'),
          appVersion: appVersion,
          recordedAt: BuiltValueNullFieldError.checkNotNull(
              recordedAt, r'ConsentState', 'recordedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
