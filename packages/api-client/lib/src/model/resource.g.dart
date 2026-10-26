// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Resource extends Resource {
  @override
  final String name;
  @override
  final String number;
  @override
  final String hours;
  @override
  final DateTime lastVerifiedAt;
  @override
  final bool isEmergency;

  factory _$Resource([void Function(ResourceBuilder)? updates]) =>
      (ResourceBuilder()..update(updates))._build();

  _$Resource._(
      {required this.name,
      required this.number,
      required this.hours,
      required this.lastVerifiedAt,
      required this.isEmergency})
      : super._();
  @override
  Resource rebuild(void Function(ResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceBuilder toBuilder() => ResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resource &&
        name == other.name &&
        number == other.number &&
        hours == other.hours &&
        lastVerifiedAt == other.lastVerifiedAt &&
        isEmergency == other.isEmergency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, hours.hashCode);
    _$hash = $jc(_$hash, lastVerifiedAt.hashCode);
    _$hash = $jc(_$hash, isEmergency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Resource')
          ..add('name', name)
          ..add('number', number)
          ..add('hours', hours)
          ..add('lastVerifiedAt', lastVerifiedAt)
          ..add('isEmergency', isEmergency))
        .toString();
  }
}

class ResourceBuilder implements Builder<Resource, ResourceBuilder> {
  _$Resource? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _hours;
  String? get hours => _$this._hours;
  set hours(String? hours) => _$this._hours = hours;

  DateTime? _lastVerifiedAt;
  DateTime? get lastVerifiedAt => _$this._lastVerifiedAt;
  set lastVerifiedAt(DateTime? lastVerifiedAt) =>
      _$this._lastVerifiedAt = lastVerifiedAt;

  bool? _isEmergency;
  bool? get isEmergency => _$this._isEmergency;
  set isEmergency(bool? isEmergency) => _$this._isEmergency = isEmergency;

  ResourceBuilder() {
    Resource._defaults(this);
  }

  ResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _number = $v.number;
      _hours = $v.hours;
      _lastVerifiedAt = $v.lastVerifiedAt;
      _isEmergency = $v.isEmergency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Resource other) {
    _$v = other as _$Resource;
  }

  @override
  void update(void Function(ResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Resource build() => _build();

  _$Resource _build() {
    final _$result = _$v ??
        _$Resource._(
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'Resource', 'name'),
          number: BuiltValueNullFieldError.checkNotNull(
              number, r'Resource', 'number'),
          hours: BuiltValueNullFieldError.checkNotNull(
              hours, r'Resource', 'hours'),
          lastVerifiedAt: BuiltValueNullFieldError.checkNotNull(
              lastVerifiedAt, r'Resource', 'lastVerifiedAt'),
          isEmergency: BuiltValueNullFieldError.checkNotNull(
              isEmergency, r'Resource', 'isEmergency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
