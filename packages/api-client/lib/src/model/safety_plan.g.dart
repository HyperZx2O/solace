// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_plan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SafetyPlan extends SafetyPlan {
  @override
  final String? field1;
  @override
  final String? field2;
  @override
  final String? field3;
  @override
  final String? field4;
  @override
  final String? field5;
  @override
  final bool sharedWithTherapist;
  @override
  final DateTime updatedAt;

  factory _$SafetyPlan([void Function(SafetyPlanBuilder)? updates]) =>
      (SafetyPlanBuilder()..update(updates))._build();

  _$SafetyPlan._(
      {this.field1,
      this.field2,
      this.field3,
      this.field4,
      this.field5,
      required this.sharedWithTherapist,
      required this.updatedAt})
      : super._();
  @override
  SafetyPlan rebuild(void Function(SafetyPlanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SafetyPlanBuilder toBuilder() => SafetyPlanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SafetyPlan &&
        field1 == other.field1 &&
        field2 == other.field2 &&
        field3 == other.field3 &&
        field4 == other.field4 &&
        field5 == other.field5 &&
        sharedWithTherapist == other.sharedWithTherapist &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, field1.hashCode);
    _$hash = $jc(_$hash, field2.hashCode);
    _$hash = $jc(_$hash, field3.hashCode);
    _$hash = $jc(_$hash, field4.hashCode);
    _$hash = $jc(_$hash, field5.hashCode);
    _$hash = $jc(_$hash, sharedWithTherapist.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SafetyPlan')
          ..add('field1', field1)
          ..add('field2', field2)
          ..add('field3', field3)
          ..add('field4', field4)
          ..add('field5', field5)
          ..add('sharedWithTherapist', sharedWithTherapist)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SafetyPlanBuilder implements Builder<SafetyPlan, SafetyPlanBuilder> {
  _$SafetyPlan? _$v;

  String? _field1;
  String? get field1 => _$this._field1;
  set field1(String? field1) => _$this._field1 = field1;

  String? _field2;
  String? get field2 => _$this._field2;
  set field2(String? field2) => _$this._field2 = field2;

  String? _field3;
  String? get field3 => _$this._field3;
  set field3(String? field3) => _$this._field3 = field3;

  String? _field4;
  String? get field4 => _$this._field4;
  set field4(String? field4) => _$this._field4 = field4;

  String? _field5;
  String? get field5 => _$this._field5;
  set field5(String? field5) => _$this._field5 = field5;

  bool? _sharedWithTherapist;
  bool? get sharedWithTherapist => _$this._sharedWithTherapist;
  set sharedWithTherapist(bool? sharedWithTherapist) =>
      _$this._sharedWithTherapist = sharedWithTherapist;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SafetyPlanBuilder() {
    SafetyPlan._defaults(this);
  }

  SafetyPlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _field1 = $v.field1;
      _field2 = $v.field2;
      _field3 = $v.field3;
      _field4 = $v.field4;
      _field5 = $v.field5;
      _sharedWithTherapist = $v.sharedWithTherapist;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SafetyPlan other) {
    _$v = other as _$SafetyPlan;
  }

  @override
  void update(void Function(SafetyPlanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SafetyPlan build() => _build();

  _$SafetyPlan _build() {
    final _$result = _$v ??
        _$SafetyPlan._(
          field1: field1,
          field2: field2,
          field3: field3,
          field4: field4,
          field5: field5,
          sharedWithTherapist: BuiltValueNullFieldError.checkNotNull(
              sharedWithTherapist, r'SafetyPlan', 'sharedWithTherapist'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'SafetyPlan', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
