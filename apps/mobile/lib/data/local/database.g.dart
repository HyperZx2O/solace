// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SafetyPlanCacheTable extends SafetyPlanCache
    with TableInfo<$SafetyPlanCacheTable, SafetyPlanCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SafetyPlanCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _field1Meta = const VerificationMeta('field1');
  @override
  late final GeneratedColumn<String> field1 = GeneratedColumn<String>(
    'field1',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _field2Meta = const VerificationMeta('field2');
  @override
  late final GeneratedColumn<String> field2 = GeneratedColumn<String>(
    'field2',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _field3Meta = const VerificationMeta('field3');
  @override
  late final GeneratedColumn<String> field3 = GeneratedColumn<String>(
    'field3',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _field4Meta = const VerificationMeta('field4');
  @override
  late final GeneratedColumn<String> field4 = GeneratedColumn<String>(
    'field4',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _field5Meta = const VerificationMeta('field5');
  @override
  late final GeneratedColumn<String> field5 = GeneratedColumn<String>(
    'field5',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sharedWithTherapistMeta =
      const VerificationMeta('sharedWithTherapist');
  @override
  late final GeneratedColumn<bool> sharedWithTherapist = GeneratedColumn<bool>(
    'shared_with_therapist',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("shared_with_therapist" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fetchedAtMeta = const VerificationMeta(
    'fetchedAt',
  );
  @override
  late final GeneratedColumn<DateTime> fetchedAt = GeneratedColumn<DateTime>(
    'fetched_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    field1,
    field2,
    field3,
    field4,
    field5,
    sharedWithTherapist,
    updatedAt,
    fetchedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'safety_plan_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<SafetyPlanCacheData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('field1')) {
      context.handle(
        _field1Meta,
        field1.isAcceptableOrUnknown(data['field1']!, _field1Meta),
      );
    }
    if (data.containsKey('field2')) {
      context.handle(
        _field2Meta,
        field2.isAcceptableOrUnknown(data['field2']!, _field2Meta),
      );
    }
    if (data.containsKey('field3')) {
      context.handle(
        _field3Meta,
        field3.isAcceptableOrUnknown(data['field3']!, _field3Meta),
      );
    }
    if (data.containsKey('field4')) {
      context.handle(
        _field4Meta,
        field4.isAcceptableOrUnknown(data['field4']!, _field4Meta),
      );
    }
    if (data.containsKey('field5')) {
      context.handle(
        _field5Meta,
        field5.isAcceptableOrUnknown(data['field5']!, _field5Meta),
      );
    }
    if (data.containsKey('shared_with_therapist')) {
      context.handle(
        _sharedWithTherapistMeta,
        sharedWithTherapist.isAcceptableOrUnknown(
          data['shared_with_therapist']!,
          _sharedWithTherapistMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('fetched_at')) {
      context.handle(
        _fetchedAtMeta,
        fetchedAt.isAcceptableOrUnknown(data['fetched_at']!, _fetchedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_fetchedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SafetyPlanCacheData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SafetyPlanCacheData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      field1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field1'],
      ),
      field2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field2'],
      ),
      field3: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field3'],
      ),
      field4: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field4'],
      ),
      field5: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field5'],
      ),
      sharedWithTherapist: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}shared_with_therapist'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      fetchedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fetched_at'],
      )!,
    );
  }

  @override
  $SafetyPlanCacheTable createAlias(String alias) {
    return $SafetyPlanCacheTable(attachedDatabase, alias);
  }
}

class SafetyPlanCacheData extends DataClass
    implements Insertable<SafetyPlanCacheData> {
  final int id;
  final String? field1;
  final String? field2;
  final String? field3;
  final String? field4;
  final String? field5;
  final bool sharedWithTherapist;
  final DateTime updatedAt;
  final DateTime fetchedAt;
  const SafetyPlanCacheData({
    required this.id,
    this.field1,
    this.field2,
    this.field3,
    this.field4,
    this.field5,
    required this.sharedWithTherapist,
    required this.updatedAt,
    required this.fetchedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || field1 != null) {
      map['field1'] = Variable<String>(field1);
    }
    if (!nullToAbsent || field2 != null) {
      map['field2'] = Variable<String>(field2);
    }
    if (!nullToAbsent || field3 != null) {
      map['field3'] = Variable<String>(field3);
    }
    if (!nullToAbsent || field4 != null) {
      map['field4'] = Variable<String>(field4);
    }
    if (!nullToAbsent || field5 != null) {
      map['field5'] = Variable<String>(field5);
    }
    map['shared_with_therapist'] = Variable<bool>(sharedWithTherapist);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['fetched_at'] = Variable<DateTime>(fetchedAt);
    return map;
  }

  SafetyPlanCacheCompanion toCompanion(bool nullToAbsent) {
    return SafetyPlanCacheCompanion(
      id: Value(id),
      field1: field1 == null && nullToAbsent
          ? const Value.absent()
          : Value(field1),
      field2: field2 == null && nullToAbsent
          ? const Value.absent()
          : Value(field2),
      field3: field3 == null && nullToAbsent
          ? const Value.absent()
          : Value(field3),
      field4: field4 == null && nullToAbsent
          ? const Value.absent()
          : Value(field4),
      field5: field5 == null && nullToAbsent
          ? const Value.absent()
          : Value(field5),
      sharedWithTherapist: Value(sharedWithTherapist),
      updatedAt: Value(updatedAt),
      fetchedAt: Value(fetchedAt),
    );
  }

  factory SafetyPlanCacheData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SafetyPlanCacheData(
      id: serializer.fromJson<int>(json['id']),
      field1: serializer.fromJson<String?>(json['field1']),
      field2: serializer.fromJson<String?>(json['field2']),
      field3: serializer.fromJson<String?>(json['field3']),
      field4: serializer.fromJson<String?>(json['field4']),
      field5: serializer.fromJson<String?>(json['field5']),
      sharedWithTherapist: serializer.fromJson<bool>(
        json['sharedWithTherapist'],
      ),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      fetchedAt: serializer.fromJson<DateTime>(json['fetchedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'field1': serializer.toJson<String?>(field1),
      'field2': serializer.toJson<String?>(field2),
      'field3': serializer.toJson<String?>(field3),
      'field4': serializer.toJson<String?>(field4),
      'field5': serializer.toJson<String?>(field5),
      'sharedWithTherapist': serializer.toJson<bool>(sharedWithTherapist),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'fetchedAt': serializer.toJson<DateTime>(fetchedAt),
    };
  }

  SafetyPlanCacheData copyWith({
    int? id,
    Value<String?> field1 = const Value.absent(),
    Value<String?> field2 = const Value.absent(),
    Value<String?> field3 = const Value.absent(),
    Value<String?> field4 = const Value.absent(),
    Value<String?> field5 = const Value.absent(),
    bool? sharedWithTherapist,
    DateTime? updatedAt,
    DateTime? fetchedAt,
  }) => SafetyPlanCacheData(
    id: id ?? this.id,
    field1: field1.present ? field1.value : this.field1,
    field2: field2.present ? field2.value : this.field2,
    field3: field3.present ? field3.value : this.field3,
    field4: field4.present ? field4.value : this.field4,
    field5: field5.present ? field5.value : this.field5,
    sharedWithTherapist: sharedWithTherapist ?? this.sharedWithTherapist,
    updatedAt: updatedAt ?? this.updatedAt,
    fetchedAt: fetchedAt ?? this.fetchedAt,
  );
  SafetyPlanCacheData copyWithCompanion(SafetyPlanCacheCompanion data) {
    return SafetyPlanCacheData(
      id: data.id.present ? data.id.value : this.id,
      field1: data.field1.present ? data.field1.value : this.field1,
      field2: data.field2.present ? data.field2.value : this.field2,
      field3: data.field3.present ? data.field3.value : this.field3,
      field4: data.field4.present ? data.field4.value : this.field4,
      field5: data.field5.present ? data.field5.value : this.field5,
      sharedWithTherapist: data.sharedWithTherapist.present
          ? data.sharedWithTherapist.value
          : this.sharedWithTherapist,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      fetchedAt: data.fetchedAt.present ? data.fetchedAt.value : this.fetchedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SafetyPlanCacheData(')
          ..write('id: $id, ')
          ..write('field1: $field1, ')
          ..write('field2: $field2, ')
          ..write('field3: $field3, ')
          ..write('field4: $field4, ')
          ..write('field5: $field5, ')
          ..write('sharedWithTherapist: $sharedWithTherapist, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    field1,
    field2,
    field3,
    field4,
    field5,
    sharedWithTherapist,
    updatedAt,
    fetchedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SafetyPlanCacheData &&
          other.id == this.id &&
          other.field1 == this.field1 &&
          other.field2 == this.field2 &&
          other.field3 == this.field3 &&
          other.field4 == this.field4 &&
          other.field5 == this.field5 &&
          other.sharedWithTherapist == this.sharedWithTherapist &&
          other.updatedAt == this.updatedAt &&
          other.fetchedAt == this.fetchedAt);
}

class SafetyPlanCacheCompanion extends UpdateCompanion<SafetyPlanCacheData> {
  final Value<int> id;
  final Value<String?> field1;
  final Value<String?> field2;
  final Value<String?> field3;
  final Value<String?> field4;
  final Value<String?> field5;
  final Value<bool> sharedWithTherapist;
  final Value<DateTime> updatedAt;
  final Value<DateTime> fetchedAt;
  const SafetyPlanCacheCompanion({
    this.id = const Value.absent(),
    this.field1 = const Value.absent(),
    this.field2 = const Value.absent(),
    this.field3 = const Value.absent(),
    this.field4 = const Value.absent(),
    this.field5 = const Value.absent(),
    this.sharedWithTherapist = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.fetchedAt = const Value.absent(),
  });
  SafetyPlanCacheCompanion.insert({
    this.id = const Value.absent(),
    this.field1 = const Value.absent(),
    this.field2 = const Value.absent(),
    this.field3 = const Value.absent(),
    this.field4 = const Value.absent(),
    this.field5 = const Value.absent(),
    this.sharedWithTherapist = const Value.absent(),
    required DateTime updatedAt,
    required DateTime fetchedAt,
  }) : updatedAt = Value(updatedAt),
       fetchedAt = Value(fetchedAt);
  static Insertable<SafetyPlanCacheData> custom({
    Expression<int>? id,
    Expression<String>? field1,
    Expression<String>? field2,
    Expression<String>? field3,
    Expression<String>? field4,
    Expression<String>? field5,
    Expression<bool>? sharedWithTherapist,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? fetchedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (field1 != null) 'field1': field1,
      if (field2 != null) 'field2': field2,
      if (field3 != null) 'field3': field3,
      if (field4 != null) 'field4': field4,
      if (field5 != null) 'field5': field5,
      if (sharedWithTherapist != null)
        'shared_with_therapist': sharedWithTherapist,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (fetchedAt != null) 'fetched_at': fetchedAt,
    });
  }

  SafetyPlanCacheCompanion copyWith({
    Value<int>? id,
    Value<String?>? field1,
    Value<String?>? field2,
    Value<String?>? field3,
    Value<String?>? field4,
    Value<String?>? field5,
    Value<bool>? sharedWithTherapist,
    Value<DateTime>? updatedAt,
    Value<DateTime>? fetchedAt,
  }) {
    return SafetyPlanCacheCompanion(
      id: id ?? this.id,
      field1: field1 ?? this.field1,
      field2: field2 ?? this.field2,
      field3: field3 ?? this.field3,
      field4: field4 ?? this.field4,
      field5: field5 ?? this.field5,
      sharedWithTherapist: sharedWithTherapist ?? this.sharedWithTherapist,
      updatedAt: updatedAt ?? this.updatedAt,
      fetchedAt: fetchedAt ?? this.fetchedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (field1.present) {
      map['field1'] = Variable<String>(field1.value);
    }
    if (field2.present) {
      map['field2'] = Variable<String>(field2.value);
    }
    if (field3.present) {
      map['field3'] = Variable<String>(field3.value);
    }
    if (field4.present) {
      map['field4'] = Variable<String>(field4.value);
    }
    if (field5.present) {
      map['field5'] = Variable<String>(field5.value);
    }
    if (sharedWithTherapist.present) {
      map['shared_with_therapist'] = Variable<bool>(sharedWithTherapist.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (fetchedAt.present) {
      map['fetched_at'] = Variable<DateTime>(fetchedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SafetyPlanCacheCompanion(')
          ..write('id: $id, ')
          ..write('field1: $field1, ')
          ..write('field2: $field2, ')
          ..write('field3: $field3, ')
          ..write('field4: $field4, ')
          ..write('field5: $field5, ')
          ..write('sharedWithTherapist: $sharedWithTherapist, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }
}

class $TodayTaskCacheTable extends TodayTaskCache
    with TableInfo<$TodayTaskCacheTable, TodayTaskCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodayTaskCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taskKeyMeta = const VerificationMeta(
    'taskKey',
  );
  @override
  late final GeneratedColumn<String> taskKey = GeneratedColumn<String>(
    'task_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _assignedForMeta = const VerificationMeta(
    'assignedFor',
  );
  @override
  late final GeneratedColumn<String> assignedFor = GeneratedColumn<String>(
    'assigned_for',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _swapReasonMeta = const VerificationMeta(
    'swapReason',
  );
  @override
  late final GeneratedColumn<String> swapReason = GeneratedColumn<String>(
    'swap_reason',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _canSwapMeta = const VerificationMeta(
    'canSwap',
  );
  @override
  late final GeneratedColumn<bool> canSwap = GeneratedColumn<bool>(
    'can_swap',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("can_swap" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _checkInDoneMeta = const VerificationMeta(
    'checkInDone',
  );
  @override
  late final GeneratedColumn<bool> checkInDone = GeneratedColumn<bool>(
    'check_in_done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("check_in_done" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _reflectionAvailableMeta =
      const VerificationMeta('reflectionAvailable');
  @override
  late final GeneratedColumn<bool> reflectionAvailable = GeneratedColumn<bool>(
    'reflection_available',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("reflection_available" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _fetchedAtMeta = const VerificationMeta(
    'fetchedAt',
  );
  @override
  late final GeneratedColumn<DateTime> fetchedAt = GeneratedColumn<DateTime>(
    'fetched_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    taskId,
    taskKey,
    title,
    assignedFor,
    completedAt,
    swapReason,
    canSwap,
    checkInDone,
    reflectionAvailable,
    fetchedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'today_task_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<TodayTaskCacheData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('task_key')) {
      context.handle(
        _taskKeyMeta,
        taskKey.isAcceptableOrUnknown(data['task_key']!, _taskKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_taskKeyMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('assigned_for')) {
      context.handle(
        _assignedForMeta,
        assignedFor.isAcceptableOrUnknown(
          data['assigned_for']!,
          _assignedForMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_assignedForMeta);
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    }
    if (data.containsKey('swap_reason')) {
      context.handle(
        _swapReasonMeta,
        swapReason.isAcceptableOrUnknown(data['swap_reason']!, _swapReasonMeta),
      );
    }
    if (data.containsKey('can_swap')) {
      context.handle(
        _canSwapMeta,
        canSwap.isAcceptableOrUnknown(data['can_swap']!, _canSwapMeta),
      );
    }
    if (data.containsKey('check_in_done')) {
      context.handle(
        _checkInDoneMeta,
        checkInDone.isAcceptableOrUnknown(
          data['check_in_done']!,
          _checkInDoneMeta,
        ),
      );
    }
    if (data.containsKey('reflection_available')) {
      context.handle(
        _reflectionAvailableMeta,
        reflectionAvailable.isAcceptableOrUnknown(
          data['reflection_available']!,
          _reflectionAvailableMeta,
        ),
      );
    }
    if (data.containsKey('fetched_at')) {
      context.handle(
        _fetchedAtMeta,
        fetchedAt.isAcceptableOrUnknown(data['fetched_at']!, _fetchedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_fetchedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodayTaskCacheData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodayTaskCacheData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      )!,
      taskKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_key'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      assignedFor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}assigned_for'],
      )!,
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      ),
      swapReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}swap_reason'],
      ),
      canSwap: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}can_swap'],
      )!,
      checkInDone: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}check_in_done'],
      )!,
      reflectionAvailable: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}reflection_available'],
      )!,
      fetchedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fetched_at'],
      )!,
    );
  }

  @override
  $TodayTaskCacheTable createAlias(String alias) {
    return $TodayTaskCacheTable(attachedDatabase, alias);
  }
}

class TodayTaskCacheData extends DataClass
    implements Insertable<TodayTaskCacheData> {
  final int id;
  final String taskId;
  final String taskKey;
  final String title;
  final String assignedFor;
  final DateTime? completedAt;
  final String? swapReason;
  final bool canSwap;
  final bool checkInDone;
  final bool reflectionAvailable;
  final DateTime fetchedAt;
  const TodayTaskCacheData({
    required this.id,
    required this.taskId,
    required this.taskKey,
    required this.title,
    required this.assignedFor,
    this.completedAt,
    this.swapReason,
    required this.canSwap,
    required this.checkInDone,
    required this.reflectionAvailable,
    required this.fetchedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['task_id'] = Variable<String>(taskId);
    map['task_key'] = Variable<String>(taskKey);
    map['title'] = Variable<String>(title);
    map['assigned_for'] = Variable<String>(assignedFor);
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    if (!nullToAbsent || swapReason != null) {
      map['swap_reason'] = Variable<String>(swapReason);
    }
    map['can_swap'] = Variable<bool>(canSwap);
    map['check_in_done'] = Variable<bool>(checkInDone);
    map['reflection_available'] = Variable<bool>(reflectionAvailable);
    map['fetched_at'] = Variable<DateTime>(fetchedAt);
    return map;
  }

  TodayTaskCacheCompanion toCompanion(bool nullToAbsent) {
    return TodayTaskCacheCompanion(
      id: Value(id),
      taskId: Value(taskId),
      taskKey: Value(taskKey),
      title: Value(title),
      assignedFor: Value(assignedFor),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
      swapReason: swapReason == null && nullToAbsent
          ? const Value.absent()
          : Value(swapReason),
      canSwap: Value(canSwap),
      checkInDone: Value(checkInDone),
      reflectionAvailable: Value(reflectionAvailable),
      fetchedAt: Value(fetchedAt),
    );
  }

  factory TodayTaskCacheData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodayTaskCacheData(
      id: serializer.fromJson<int>(json['id']),
      taskId: serializer.fromJson<String>(json['taskId']),
      taskKey: serializer.fromJson<String>(json['taskKey']),
      title: serializer.fromJson<String>(json['title']),
      assignedFor: serializer.fromJson<String>(json['assignedFor']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
      swapReason: serializer.fromJson<String?>(json['swapReason']),
      canSwap: serializer.fromJson<bool>(json['canSwap']),
      checkInDone: serializer.fromJson<bool>(json['checkInDone']),
      reflectionAvailable: serializer.fromJson<bool>(
        json['reflectionAvailable'],
      ),
      fetchedAt: serializer.fromJson<DateTime>(json['fetchedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'taskId': serializer.toJson<String>(taskId),
      'taskKey': serializer.toJson<String>(taskKey),
      'title': serializer.toJson<String>(title),
      'assignedFor': serializer.toJson<String>(assignedFor),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
      'swapReason': serializer.toJson<String?>(swapReason),
      'canSwap': serializer.toJson<bool>(canSwap),
      'checkInDone': serializer.toJson<bool>(checkInDone),
      'reflectionAvailable': serializer.toJson<bool>(reflectionAvailable),
      'fetchedAt': serializer.toJson<DateTime>(fetchedAt),
    };
  }

  TodayTaskCacheData copyWith({
    int? id,
    String? taskId,
    String? taskKey,
    String? title,
    String? assignedFor,
    Value<DateTime?> completedAt = const Value.absent(),
    Value<String?> swapReason = const Value.absent(),
    bool? canSwap,
    bool? checkInDone,
    bool? reflectionAvailable,
    DateTime? fetchedAt,
  }) => TodayTaskCacheData(
    id: id ?? this.id,
    taskId: taskId ?? this.taskId,
    taskKey: taskKey ?? this.taskKey,
    title: title ?? this.title,
    assignedFor: assignedFor ?? this.assignedFor,
    completedAt: completedAt.present ? completedAt.value : this.completedAt,
    swapReason: swapReason.present ? swapReason.value : this.swapReason,
    canSwap: canSwap ?? this.canSwap,
    checkInDone: checkInDone ?? this.checkInDone,
    reflectionAvailable: reflectionAvailable ?? this.reflectionAvailable,
    fetchedAt: fetchedAt ?? this.fetchedAt,
  );
  TodayTaskCacheData copyWithCompanion(TodayTaskCacheCompanion data) {
    return TodayTaskCacheData(
      id: data.id.present ? data.id.value : this.id,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      taskKey: data.taskKey.present ? data.taskKey.value : this.taskKey,
      title: data.title.present ? data.title.value : this.title,
      assignedFor: data.assignedFor.present
          ? data.assignedFor.value
          : this.assignedFor,
      completedAt: data.completedAt.present
          ? data.completedAt.value
          : this.completedAt,
      swapReason: data.swapReason.present
          ? data.swapReason.value
          : this.swapReason,
      canSwap: data.canSwap.present ? data.canSwap.value : this.canSwap,
      checkInDone: data.checkInDone.present
          ? data.checkInDone.value
          : this.checkInDone,
      reflectionAvailable: data.reflectionAvailable.present
          ? data.reflectionAvailable.value
          : this.reflectionAvailable,
      fetchedAt: data.fetchedAt.present ? data.fetchedAt.value : this.fetchedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TodayTaskCacheData(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('taskKey: $taskKey, ')
          ..write('title: $title, ')
          ..write('assignedFor: $assignedFor, ')
          ..write('completedAt: $completedAt, ')
          ..write('swapReason: $swapReason, ')
          ..write('canSwap: $canSwap, ')
          ..write('checkInDone: $checkInDone, ')
          ..write('reflectionAvailable: $reflectionAvailable, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    taskId,
    taskKey,
    title,
    assignedFor,
    completedAt,
    swapReason,
    canSwap,
    checkInDone,
    reflectionAvailable,
    fetchedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodayTaskCacheData &&
          other.id == this.id &&
          other.taskId == this.taskId &&
          other.taskKey == this.taskKey &&
          other.title == this.title &&
          other.assignedFor == this.assignedFor &&
          other.completedAt == this.completedAt &&
          other.swapReason == this.swapReason &&
          other.canSwap == this.canSwap &&
          other.checkInDone == this.checkInDone &&
          other.reflectionAvailable == this.reflectionAvailable &&
          other.fetchedAt == this.fetchedAt);
}

class TodayTaskCacheCompanion extends UpdateCompanion<TodayTaskCacheData> {
  final Value<int> id;
  final Value<String> taskId;
  final Value<String> taskKey;
  final Value<String> title;
  final Value<String> assignedFor;
  final Value<DateTime?> completedAt;
  final Value<String?> swapReason;
  final Value<bool> canSwap;
  final Value<bool> checkInDone;
  final Value<bool> reflectionAvailable;
  final Value<DateTime> fetchedAt;
  const TodayTaskCacheCompanion({
    this.id = const Value.absent(),
    this.taskId = const Value.absent(),
    this.taskKey = const Value.absent(),
    this.title = const Value.absent(),
    this.assignedFor = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.swapReason = const Value.absent(),
    this.canSwap = const Value.absent(),
    this.checkInDone = const Value.absent(),
    this.reflectionAvailable = const Value.absent(),
    this.fetchedAt = const Value.absent(),
  });
  TodayTaskCacheCompanion.insert({
    this.id = const Value.absent(),
    required String taskId,
    required String taskKey,
    required String title,
    required String assignedFor,
    this.completedAt = const Value.absent(),
    this.swapReason = const Value.absent(),
    this.canSwap = const Value.absent(),
    this.checkInDone = const Value.absent(),
    this.reflectionAvailable = const Value.absent(),
    required DateTime fetchedAt,
  }) : taskId = Value(taskId),
       taskKey = Value(taskKey),
       title = Value(title),
       assignedFor = Value(assignedFor),
       fetchedAt = Value(fetchedAt);
  static Insertable<TodayTaskCacheData> custom({
    Expression<int>? id,
    Expression<String>? taskId,
    Expression<String>? taskKey,
    Expression<String>? title,
    Expression<String>? assignedFor,
    Expression<DateTime>? completedAt,
    Expression<String>? swapReason,
    Expression<bool>? canSwap,
    Expression<bool>? checkInDone,
    Expression<bool>? reflectionAvailable,
    Expression<DateTime>? fetchedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taskId != null) 'task_id': taskId,
      if (taskKey != null) 'task_key': taskKey,
      if (title != null) 'title': title,
      if (assignedFor != null) 'assigned_for': assignedFor,
      if (completedAt != null) 'completed_at': completedAt,
      if (swapReason != null) 'swap_reason': swapReason,
      if (canSwap != null) 'can_swap': canSwap,
      if (checkInDone != null) 'check_in_done': checkInDone,
      if (reflectionAvailable != null)
        'reflection_available': reflectionAvailable,
      if (fetchedAt != null) 'fetched_at': fetchedAt,
    });
  }

  TodayTaskCacheCompanion copyWith({
    Value<int>? id,
    Value<String>? taskId,
    Value<String>? taskKey,
    Value<String>? title,
    Value<String>? assignedFor,
    Value<DateTime?>? completedAt,
    Value<String?>? swapReason,
    Value<bool>? canSwap,
    Value<bool>? checkInDone,
    Value<bool>? reflectionAvailable,
    Value<DateTime>? fetchedAt,
  }) {
    return TodayTaskCacheCompanion(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      taskKey: taskKey ?? this.taskKey,
      title: title ?? this.title,
      assignedFor: assignedFor ?? this.assignedFor,
      completedAt: completedAt ?? this.completedAt,
      swapReason: swapReason ?? this.swapReason,
      canSwap: canSwap ?? this.canSwap,
      checkInDone: checkInDone ?? this.checkInDone,
      reflectionAvailable: reflectionAvailable ?? this.reflectionAvailable,
      fetchedAt: fetchedAt ?? this.fetchedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (taskKey.present) {
      map['task_key'] = Variable<String>(taskKey.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (assignedFor.present) {
      map['assigned_for'] = Variable<String>(assignedFor.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (swapReason.present) {
      map['swap_reason'] = Variable<String>(swapReason.value);
    }
    if (canSwap.present) {
      map['can_swap'] = Variable<bool>(canSwap.value);
    }
    if (checkInDone.present) {
      map['check_in_done'] = Variable<bool>(checkInDone.value);
    }
    if (reflectionAvailable.present) {
      map['reflection_available'] = Variable<bool>(reflectionAvailable.value);
    }
    if (fetchedAt.present) {
      map['fetched_at'] = Variable<DateTime>(fetchedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodayTaskCacheCompanion(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('taskKey: $taskKey, ')
          ..write('title: $title, ')
          ..write('assignedFor: $assignedFor, ')
          ..write('completedAt: $completedAt, ')
          ..write('swapReason: $swapReason, ')
          ..write('canSwap: $canSwap, ')
          ..write('checkInDone: $checkInDone, ')
          ..write('reflectionAvailable: $reflectionAvailable, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }
}

class $MoodHistoryCacheTable extends MoodHistoryCache
    with TableInfo<$MoodHistoryCacheTable, MoodHistoryCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoodHistoryCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _checkInIdMeta = const VerificationMeta(
    'checkInId',
  );
  @override
  late final GeneratedColumn<String> checkInId = GeneratedColumn<String>(
    'check_in_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moodMeta = const VerificationMeta('mood');
  @override
  late final GeneratedColumn<int> mood = GeneratedColumn<int>(
    'mood',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _feelingWordsMeta = const VerificationMeta(
    'feelingWords',
  );
  @override
  late final GeneratedColumn<String> feelingWords = GeneratedColumn<String>(
    'feeling_words',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _bodySignalMeta = const VerificationMeta(
    'bodySignal',
  );
  @override
  late final GeneratedColumn<String> bodySignal = GeneratedColumn<String>(
    'body_signal',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _clientCreatedAtMeta = const VerificationMeta(
    'clientCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> clientCreatedAt =
      GeneratedColumn<DateTime>(
        'client_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _serverReceivedAtMeta = const VerificationMeta(
    'serverReceivedAt',
  );
  @override
  late final GeneratedColumn<DateTime> serverReceivedAt =
      GeneratedColumn<DateTime>(
        'server_received_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    checkInId,
    clientId,
    mood,
    feelingWords,
    bodySignal,
    clientCreatedAt,
    serverReceivedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mood_history_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<MoodHistoryCacheData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('check_in_id')) {
      context.handle(
        _checkInIdMeta,
        checkInId.isAcceptableOrUnknown(data['check_in_id']!, _checkInIdMeta),
      );
    } else if (isInserting) {
      context.missing(_checkInIdMeta);
    }
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('mood')) {
      context.handle(
        _moodMeta,
        mood.isAcceptableOrUnknown(data['mood']!, _moodMeta),
      );
    } else if (isInserting) {
      context.missing(_moodMeta);
    }
    if (data.containsKey('feeling_words')) {
      context.handle(
        _feelingWordsMeta,
        feelingWords.isAcceptableOrUnknown(
          data['feeling_words']!,
          _feelingWordsMeta,
        ),
      );
    }
    if (data.containsKey('body_signal')) {
      context.handle(
        _bodySignalMeta,
        bodySignal.isAcceptableOrUnknown(data['body_signal']!, _bodySignalMeta),
      );
    }
    if (data.containsKey('client_created_at')) {
      context.handle(
        _clientCreatedAtMeta,
        clientCreatedAt.isAcceptableOrUnknown(
          data['client_created_at']!,
          _clientCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientCreatedAtMeta);
    }
    if (data.containsKey('server_received_at')) {
      context.handle(
        _serverReceivedAtMeta,
        serverReceivedAt.isAcceptableOrUnknown(
          data['server_received_at']!,
          _serverReceivedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_serverReceivedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoodHistoryCacheData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoodHistoryCacheData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      checkInId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}check_in_id'],
      )!,
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      )!,
      mood: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}mood'],
      )!,
      feelingWords: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}feeling_words'],
      )!,
      bodySignal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body_signal'],
      ),
      clientCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}client_created_at'],
      )!,
      serverReceivedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}server_received_at'],
      )!,
    );
  }

  @override
  $MoodHistoryCacheTable createAlias(String alias) {
    return $MoodHistoryCacheTable(attachedDatabase, alias);
  }
}

class MoodHistoryCacheData extends DataClass
    implements Insertable<MoodHistoryCacheData> {
  final int id;
  final String checkInId;
  final String clientId;
  final int mood;
  final String feelingWords;
  final String? bodySignal;
  final DateTime clientCreatedAt;
  final DateTime serverReceivedAt;
  const MoodHistoryCacheData({
    required this.id,
    required this.checkInId,
    required this.clientId,
    required this.mood,
    required this.feelingWords,
    this.bodySignal,
    required this.clientCreatedAt,
    required this.serverReceivedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['check_in_id'] = Variable<String>(checkInId);
    map['client_id'] = Variable<String>(clientId);
    map['mood'] = Variable<int>(mood);
    map['feeling_words'] = Variable<String>(feelingWords);
    if (!nullToAbsent || bodySignal != null) {
      map['body_signal'] = Variable<String>(bodySignal);
    }
    map['client_created_at'] = Variable<DateTime>(clientCreatedAt);
    map['server_received_at'] = Variable<DateTime>(serverReceivedAt);
    return map;
  }

  MoodHistoryCacheCompanion toCompanion(bool nullToAbsent) {
    return MoodHistoryCacheCompanion(
      id: Value(id),
      checkInId: Value(checkInId),
      clientId: Value(clientId),
      mood: Value(mood),
      feelingWords: Value(feelingWords),
      bodySignal: bodySignal == null && nullToAbsent
          ? const Value.absent()
          : Value(bodySignal),
      clientCreatedAt: Value(clientCreatedAt),
      serverReceivedAt: Value(serverReceivedAt),
    );
  }

  factory MoodHistoryCacheData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoodHistoryCacheData(
      id: serializer.fromJson<int>(json['id']),
      checkInId: serializer.fromJson<String>(json['checkInId']),
      clientId: serializer.fromJson<String>(json['clientId']),
      mood: serializer.fromJson<int>(json['mood']),
      feelingWords: serializer.fromJson<String>(json['feelingWords']),
      bodySignal: serializer.fromJson<String?>(json['bodySignal']),
      clientCreatedAt: serializer.fromJson<DateTime>(json['clientCreatedAt']),
      serverReceivedAt: serializer.fromJson<DateTime>(json['serverReceivedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'checkInId': serializer.toJson<String>(checkInId),
      'clientId': serializer.toJson<String>(clientId),
      'mood': serializer.toJson<int>(mood),
      'feelingWords': serializer.toJson<String>(feelingWords),
      'bodySignal': serializer.toJson<String?>(bodySignal),
      'clientCreatedAt': serializer.toJson<DateTime>(clientCreatedAt),
      'serverReceivedAt': serializer.toJson<DateTime>(serverReceivedAt),
    };
  }

  MoodHistoryCacheData copyWith({
    int? id,
    String? checkInId,
    String? clientId,
    int? mood,
    String? feelingWords,
    Value<String?> bodySignal = const Value.absent(),
    DateTime? clientCreatedAt,
    DateTime? serverReceivedAt,
  }) => MoodHistoryCacheData(
    id: id ?? this.id,
    checkInId: checkInId ?? this.checkInId,
    clientId: clientId ?? this.clientId,
    mood: mood ?? this.mood,
    feelingWords: feelingWords ?? this.feelingWords,
    bodySignal: bodySignal.present ? bodySignal.value : this.bodySignal,
    clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
    serverReceivedAt: serverReceivedAt ?? this.serverReceivedAt,
  );
  MoodHistoryCacheData copyWithCompanion(MoodHistoryCacheCompanion data) {
    return MoodHistoryCacheData(
      id: data.id.present ? data.id.value : this.id,
      checkInId: data.checkInId.present ? data.checkInId.value : this.checkInId,
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      mood: data.mood.present ? data.mood.value : this.mood,
      feelingWords: data.feelingWords.present
          ? data.feelingWords.value
          : this.feelingWords,
      bodySignal: data.bodySignal.present
          ? data.bodySignal.value
          : this.bodySignal,
      clientCreatedAt: data.clientCreatedAt.present
          ? data.clientCreatedAt.value
          : this.clientCreatedAt,
      serverReceivedAt: data.serverReceivedAt.present
          ? data.serverReceivedAt.value
          : this.serverReceivedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoodHistoryCacheData(')
          ..write('id: $id, ')
          ..write('checkInId: $checkInId, ')
          ..write('clientId: $clientId, ')
          ..write('mood: $mood, ')
          ..write('feelingWords: $feelingWords, ')
          ..write('bodySignal: $bodySignal, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('serverReceivedAt: $serverReceivedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    checkInId,
    clientId,
    mood,
    feelingWords,
    bodySignal,
    clientCreatedAt,
    serverReceivedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoodHistoryCacheData &&
          other.id == this.id &&
          other.checkInId == this.checkInId &&
          other.clientId == this.clientId &&
          other.mood == this.mood &&
          other.feelingWords == this.feelingWords &&
          other.bodySignal == this.bodySignal &&
          other.clientCreatedAt == this.clientCreatedAt &&
          other.serverReceivedAt == this.serverReceivedAt);
}

class MoodHistoryCacheCompanion extends UpdateCompanion<MoodHistoryCacheData> {
  final Value<int> id;
  final Value<String> checkInId;
  final Value<String> clientId;
  final Value<int> mood;
  final Value<String> feelingWords;
  final Value<String?> bodySignal;
  final Value<DateTime> clientCreatedAt;
  final Value<DateTime> serverReceivedAt;
  const MoodHistoryCacheCompanion({
    this.id = const Value.absent(),
    this.checkInId = const Value.absent(),
    this.clientId = const Value.absent(),
    this.mood = const Value.absent(),
    this.feelingWords = const Value.absent(),
    this.bodySignal = const Value.absent(),
    this.clientCreatedAt = const Value.absent(),
    this.serverReceivedAt = const Value.absent(),
  });
  MoodHistoryCacheCompanion.insert({
    this.id = const Value.absent(),
    required String checkInId,
    required String clientId,
    required int mood,
    this.feelingWords = const Value.absent(),
    this.bodySignal = const Value.absent(),
    required DateTime clientCreatedAt,
    required DateTime serverReceivedAt,
  }) : checkInId = Value(checkInId),
       clientId = Value(clientId),
       mood = Value(mood),
       clientCreatedAt = Value(clientCreatedAt),
       serverReceivedAt = Value(serverReceivedAt);
  static Insertable<MoodHistoryCacheData> custom({
    Expression<int>? id,
    Expression<String>? checkInId,
    Expression<String>? clientId,
    Expression<int>? mood,
    Expression<String>? feelingWords,
    Expression<String>? bodySignal,
    Expression<DateTime>? clientCreatedAt,
    Expression<DateTime>? serverReceivedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (checkInId != null) 'check_in_id': checkInId,
      if (clientId != null) 'client_id': clientId,
      if (mood != null) 'mood': mood,
      if (feelingWords != null) 'feeling_words': feelingWords,
      if (bodySignal != null) 'body_signal': bodySignal,
      if (clientCreatedAt != null) 'client_created_at': clientCreatedAt,
      if (serverReceivedAt != null) 'server_received_at': serverReceivedAt,
    });
  }

  MoodHistoryCacheCompanion copyWith({
    Value<int>? id,
    Value<String>? checkInId,
    Value<String>? clientId,
    Value<int>? mood,
    Value<String>? feelingWords,
    Value<String?>? bodySignal,
    Value<DateTime>? clientCreatedAt,
    Value<DateTime>? serverReceivedAt,
  }) {
    return MoodHistoryCacheCompanion(
      id: id ?? this.id,
      checkInId: checkInId ?? this.checkInId,
      clientId: clientId ?? this.clientId,
      mood: mood ?? this.mood,
      feelingWords: feelingWords ?? this.feelingWords,
      bodySignal: bodySignal ?? this.bodySignal,
      clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
      serverReceivedAt: serverReceivedAt ?? this.serverReceivedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (checkInId.present) {
      map['check_in_id'] = Variable<String>(checkInId.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (mood.present) {
      map['mood'] = Variable<int>(mood.value);
    }
    if (feelingWords.present) {
      map['feeling_words'] = Variable<String>(feelingWords.value);
    }
    if (bodySignal.present) {
      map['body_signal'] = Variable<String>(bodySignal.value);
    }
    if (clientCreatedAt.present) {
      map['client_created_at'] = Variable<DateTime>(clientCreatedAt.value);
    }
    if (serverReceivedAt.present) {
      map['server_received_at'] = Variable<DateTime>(serverReceivedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoodHistoryCacheCompanion(')
          ..write('id: $id, ')
          ..write('checkInId: $checkInId, ')
          ..write('clientId: $clientId, ')
          ..write('mood: $mood, ')
          ..write('feelingWords: $feelingWords, ')
          ..write('bodySignal: $bodySignal, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('serverReceivedAt: $serverReceivedAt')
          ..write(')'))
        .toString();
  }
}

class $EmergencyContactsTable extends EmergencyContacts
    with TableInfo<$EmergencyContactsTable, EmergencyContact> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmergencyContactsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
    'number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _readOnlyMeta = const VerificationMeta(
    'readOnly',
  );
  @override
  late final GeneratedColumn<bool> readOnly = GeneratedColumn<bool>(
    'read_only',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("read_only" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    number,
    kind,
    readOnly,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'emergency_contacts';
  @override
  VerificationContext validateIntegrity(
    Insertable<EmergencyContact> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('read_only')) {
      context.handle(
        _readOnlyMeta,
        readOnly.isAcceptableOrUnknown(data['read_only']!, _readOnlyMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmergencyContact map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmergencyContact(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}number'],
      ),
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      readOnly: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}read_only'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $EmergencyContactsTable createAlias(String alias) {
    return $EmergencyContactsTable(attachedDatabase, alias);
  }
}

class EmergencyContact extends DataClass
    implements Insertable<EmergencyContact> {
  final String id;
  final String name;
  final String? number;
  final String kind;
  final bool readOnly;
  final DateTime updatedAt;
  const EmergencyContact({
    required this.id,
    required this.name,
    this.number,
    required this.kind,
    required this.readOnly,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String>(number);
    }
    map['kind'] = Variable<String>(kind);
    map['read_only'] = Variable<bool>(readOnly);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  EmergencyContactsCompanion toCompanion(bool nullToAbsent) {
    return EmergencyContactsCompanion(
      id: Value(id),
      name: Value(name),
      number: number == null && nullToAbsent
          ? const Value.absent()
          : Value(number),
      kind: Value(kind),
      readOnly: Value(readOnly),
      updatedAt: Value(updatedAt),
    );
  }

  factory EmergencyContact.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmergencyContact(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      number: serializer.fromJson<String?>(json['number']),
      kind: serializer.fromJson<String>(json['kind']),
      readOnly: serializer.fromJson<bool>(json['readOnly']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'number': serializer.toJson<String?>(number),
      'kind': serializer.toJson<String>(kind),
      'readOnly': serializer.toJson<bool>(readOnly),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  EmergencyContact copyWith({
    String? id,
    String? name,
    Value<String?> number = const Value.absent(),
    String? kind,
    bool? readOnly,
    DateTime? updatedAt,
  }) => EmergencyContact(
    id: id ?? this.id,
    name: name ?? this.name,
    number: number.present ? number.value : this.number,
    kind: kind ?? this.kind,
    readOnly: readOnly ?? this.readOnly,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  EmergencyContact copyWithCompanion(EmergencyContactsCompanion data) {
    return EmergencyContact(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      number: data.number.present ? data.number.value : this.number,
      kind: data.kind.present ? data.kind.value : this.kind,
      readOnly: data.readOnly.present ? data.readOnly.value : this.readOnly,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EmergencyContact(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('number: $number, ')
          ..write('kind: $kind, ')
          ..write('readOnly: $readOnly, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, number, kind, readOnly, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmergencyContact &&
          other.id == this.id &&
          other.name == this.name &&
          other.number == this.number &&
          other.kind == this.kind &&
          other.readOnly == this.readOnly &&
          other.updatedAt == this.updatedAt);
}

class EmergencyContactsCompanion extends UpdateCompanion<EmergencyContact> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> number;
  final Value<String> kind;
  final Value<bool> readOnly;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const EmergencyContactsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.number = const Value.absent(),
    this.kind = const Value.absent(),
    this.readOnly = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EmergencyContactsCompanion.insert({
    required String id,
    required String name,
    this.number = const Value.absent(),
    required String kind,
    this.readOnly = const Value.absent(),
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       kind = Value(kind),
       updatedAt = Value(updatedAt);
  static Insertable<EmergencyContact> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? number,
    Expression<String>? kind,
    Expression<bool>? readOnly,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (number != null) 'number': number,
      if (kind != null) 'kind': kind,
      if (readOnly != null) 'read_only': readOnly,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EmergencyContactsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? number,
    Value<String>? kind,
    Value<bool>? readOnly,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return EmergencyContactsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      number: number ?? this.number,
      kind: kind ?? this.kind,
      readOnly: readOnly ?? this.readOnly,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (readOnly.present) {
      map['read_only'] = Variable<bool>(readOnly.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmergencyContactsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('number: $number, ')
          ..write('kind: $kind, ')
          ..write('readOnly: $readOnly, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CheckInQueueTable extends CheckInQueue
    with TableInfo<$CheckInQueueTable, CheckInQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CheckInQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientCreatedAtMeta = const VerificationMeta(
    'clientCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> clientCreatedAt =
      GeneratedColumn<DateTime>(
        'client_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _nextAttemptAtMeta = const VerificationMeta(
    'nextAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextAttemptAt =
      GeneratedColumn<DateTime>(
        'next_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _clockSkewSecondsMeta = const VerificationMeta(
    'clockSkewSeconds',
  );
  @override
  late final GeneratedColumn<int> clockSkewSeconds = GeneratedColumn<int>(
    'clock_skew_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clientId,
    payload,
    clientCreatedAt,
    attempts,
    nextAttemptAt,
    status,
    clockSkewSeconds,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'check_in_queue';
  @override
  VerificationContext validateIntegrity(
    Insertable<CheckInQueueData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('client_created_at')) {
      context.handle(
        _clientCreatedAtMeta,
        clientCreatedAt.isAcceptableOrUnknown(
          data['client_created_at']!,
          _clientCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientCreatedAtMeta);
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('next_attempt_at')) {
      context.handle(
        _nextAttemptAtMeta,
        nextAttemptAt.isAcceptableOrUnknown(
          data['next_attempt_at']!,
          _nextAttemptAtMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('clock_skew_seconds')) {
      context.handle(
        _clockSkewSecondsMeta,
        clockSkewSeconds.isAcceptableOrUnknown(
          data['clock_skew_seconds']!,
          _clockSkewSecondsMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientId};
  @override
  CheckInQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CheckInQueueData(
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      clientCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}client_created_at'],
      )!,
      attempts: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attempts'],
      )!,
      nextAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_attempt_at'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      clockSkewSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}clock_skew_seconds'],
      ),
    );
  }

  @override
  $CheckInQueueTable createAlias(String alias) {
    return $CheckInQueueTable(attachedDatabase, alias);
  }
}

class CheckInQueueData extends DataClass
    implements Insertable<CheckInQueueData> {
  final String clientId;
  final String payload;
  final DateTime clientCreatedAt;
  final int attempts;
  final DateTime? nextAttemptAt;
  final String status;
  final int? clockSkewSeconds;
  const CheckInQueueData({
    required this.clientId,
    required this.payload,
    required this.clientCreatedAt,
    required this.attempts,
    this.nextAttemptAt,
    required this.status,
    this.clockSkewSeconds,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_id'] = Variable<String>(clientId);
    map['payload'] = Variable<String>(payload);
    map['client_created_at'] = Variable<DateTime>(clientCreatedAt);
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || nextAttemptAt != null) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || clockSkewSeconds != null) {
      map['clock_skew_seconds'] = Variable<int>(clockSkewSeconds);
    }
    return map;
  }

  CheckInQueueCompanion toCompanion(bool nullToAbsent) {
    return CheckInQueueCompanion(
      clientId: Value(clientId),
      payload: Value(payload),
      clientCreatedAt: Value(clientCreatedAt),
      attempts: Value(attempts),
      nextAttemptAt: nextAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(nextAttemptAt),
      status: Value(status),
      clockSkewSeconds: clockSkewSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(clockSkewSeconds),
    );
  }

  factory CheckInQueueData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CheckInQueueData(
      clientId: serializer.fromJson<String>(json['clientId']),
      payload: serializer.fromJson<String>(json['payload']),
      clientCreatedAt: serializer.fromJson<DateTime>(json['clientCreatedAt']),
      attempts: serializer.fromJson<int>(json['attempts']),
      nextAttemptAt: serializer.fromJson<DateTime?>(json['nextAttemptAt']),
      status: serializer.fromJson<String>(json['status']),
      clockSkewSeconds: serializer.fromJson<int?>(json['clockSkewSeconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientId': serializer.toJson<String>(clientId),
      'payload': serializer.toJson<String>(payload),
      'clientCreatedAt': serializer.toJson<DateTime>(clientCreatedAt),
      'attempts': serializer.toJson<int>(attempts),
      'nextAttemptAt': serializer.toJson<DateTime?>(nextAttemptAt),
      'status': serializer.toJson<String>(status),
      'clockSkewSeconds': serializer.toJson<int?>(clockSkewSeconds),
    };
  }

  CheckInQueueData copyWith({
    String? clientId,
    String? payload,
    DateTime? clientCreatedAt,
    int? attempts,
    Value<DateTime?> nextAttemptAt = const Value.absent(),
    String? status,
    Value<int?> clockSkewSeconds = const Value.absent(),
  }) => CheckInQueueData(
    clientId: clientId ?? this.clientId,
    payload: payload ?? this.payload,
    clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
    attempts: attempts ?? this.attempts,
    nextAttemptAt: nextAttemptAt.present
        ? nextAttemptAt.value
        : this.nextAttemptAt,
    status: status ?? this.status,
    clockSkewSeconds: clockSkewSeconds.present
        ? clockSkewSeconds.value
        : this.clockSkewSeconds,
  );
  CheckInQueueData copyWithCompanion(CheckInQueueCompanion data) {
    return CheckInQueueData(
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      payload: data.payload.present ? data.payload.value : this.payload,
      clientCreatedAt: data.clientCreatedAt.present
          ? data.clientCreatedAt.value
          : this.clientCreatedAt,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      nextAttemptAt: data.nextAttemptAt.present
          ? data.nextAttemptAt.value
          : this.nextAttemptAt,
      status: data.status.present ? data.status.value : this.status,
      clockSkewSeconds: data.clockSkewSeconds.present
          ? data.clockSkewSeconds.value
          : this.clockSkewSeconds,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CheckInQueueData(')
          ..write('clientId: $clientId, ')
          ..write('payload: $payload, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('status: $status, ')
          ..write('clockSkewSeconds: $clockSkewSeconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    clientId,
    payload,
    clientCreatedAt,
    attempts,
    nextAttemptAt,
    status,
    clockSkewSeconds,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CheckInQueueData &&
          other.clientId == this.clientId &&
          other.payload == this.payload &&
          other.clientCreatedAt == this.clientCreatedAt &&
          other.attempts == this.attempts &&
          other.nextAttemptAt == this.nextAttemptAt &&
          other.status == this.status &&
          other.clockSkewSeconds == this.clockSkewSeconds);
}

class CheckInQueueCompanion extends UpdateCompanion<CheckInQueueData> {
  final Value<String> clientId;
  final Value<String> payload;
  final Value<DateTime> clientCreatedAt;
  final Value<int> attempts;
  final Value<DateTime?> nextAttemptAt;
  final Value<String> status;
  final Value<int?> clockSkewSeconds;
  final Value<int> rowid;
  const CheckInQueueCompanion({
    this.clientId = const Value.absent(),
    this.payload = const Value.absent(),
    this.clientCreatedAt = const Value.absent(),
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.status = const Value.absent(),
    this.clockSkewSeconds = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CheckInQueueCompanion.insert({
    required String clientId,
    required String payload,
    required DateTime clientCreatedAt,
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.status = const Value.absent(),
    this.clockSkewSeconds = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : clientId = Value(clientId),
       payload = Value(payload),
       clientCreatedAt = Value(clientCreatedAt);
  static Insertable<CheckInQueueData> custom({
    Expression<String>? clientId,
    Expression<String>? payload,
    Expression<DateTime>? clientCreatedAt,
    Expression<int>? attempts,
    Expression<DateTime>? nextAttemptAt,
    Expression<String>? status,
    Expression<int>? clockSkewSeconds,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientId != null) 'client_id': clientId,
      if (payload != null) 'payload': payload,
      if (clientCreatedAt != null) 'client_created_at': clientCreatedAt,
      if (attempts != null) 'attempts': attempts,
      if (nextAttemptAt != null) 'next_attempt_at': nextAttemptAt,
      if (status != null) 'status': status,
      if (clockSkewSeconds != null) 'clock_skew_seconds': clockSkewSeconds,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CheckInQueueCompanion copyWith({
    Value<String>? clientId,
    Value<String>? payload,
    Value<DateTime>? clientCreatedAt,
    Value<int>? attempts,
    Value<DateTime?>? nextAttemptAt,
    Value<String>? status,
    Value<int?>? clockSkewSeconds,
    Value<int>? rowid,
  }) {
    return CheckInQueueCompanion(
      clientId: clientId ?? this.clientId,
      payload: payload ?? this.payload,
      clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
      attempts: attempts ?? this.attempts,
      nextAttemptAt: nextAttemptAt ?? this.nextAttemptAt,
      status: status ?? this.status,
      clockSkewSeconds: clockSkewSeconds ?? this.clockSkewSeconds,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (clientCreatedAt.present) {
      map['client_created_at'] = Variable<DateTime>(clientCreatedAt.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (nextAttemptAt.present) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (clockSkewSeconds.present) {
      map['clock_skew_seconds'] = Variable<int>(clockSkewSeconds.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CheckInQueueCompanion(')
          ..write('clientId: $clientId, ')
          ..write('payload: $payload, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('status: $status, ')
          ..write('clockSkewSeconds: $clockSkewSeconds, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $JournalQueueTable extends JournalQueue
    with TableInfo<$JournalQueueTable, JournalQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JournalQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientCreatedAtMeta = const VerificationMeta(
    'clientCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> clientCreatedAt =
      GeneratedColumn<DateTime>(
        'client_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _nextAttemptAtMeta = const VerificationMeta(
    'nextAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextAttemptAt =
      GeneratedColumn<DateTime>(
        'next_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _clockSkewSecondsMeta = const VerificationMeta(
    'clockSkewSeconds',
  );
  @override
  late final GeneratedColumn<int> clockSkewSeconds = GeneratedColumn<int>(
    'clock_skew_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clientId,
    payload,
    clientCreatedAt,
    attempts,
    nextAttemptAt,
    status,
    clockSkewSeconds,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'journal_queue';
  @override
  VerificationContext validateIntegrity(
    Insertable<JournalQueueData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('client_created_at')) {
      context.handle(
        _clientCreatedAtMeta,
        clientCreatedAt.isAcceptableOrUnknown(
          data['client_created_at']!,
          _clientCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientCreatedAtMeta);
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('next_attempt_at')) {
      context.handle(
        _nextAttemptAtMeta,
        nextAttemptAt.isAcceptableOrUnknown(
          data['next_attempt_at']!,
          _nextAttemptAtMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('clock_skew_seconds')) {
      context.handle(
        _clockSkewSecondsMeta,
        clockSkewSeconds.isAcceptableOrUnknown(
          data['clock_skew_seconds']!,
          _clockSkewSecondsMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientId};
  @override
  JournalQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JournalQueueData(
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      clientCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}client_created_at'],
      )!,
      attempts: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attempts'],
      )!,
      nextAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_attempt_at'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      clockSkewSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}clock_skew_seconds'],
      ),
    );
  }

  @override
  $JournalQueueTable createAlias(String alias) {
    return $JournalQueueTable(attachedDatabase, alias);
  }
}

class JournalQueueData extends DataClass
    implements Insertable<JournalQueueData> {
  final String clientId;
  final String payload;
  final DateTime clientCreatedAt;
  final int attempts;
  final DateTime? nextAttemptAt;
  final String status;
  final int? clockSkewSeconds;
  const JournalQueueData({
    required this.clientId,
    required this.payload,
    required this.clientCreatedAt,
    required this.attempts,
    this.nextAttemptAt,
    required this.status,
    this.clockSkewSeconds,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_id'] = Variable<String>(clientId);
    map['payload'] = Variable<String>(payload);
    map['client_created_at'] = Variable<DateTime>(clientCreatedAt);
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || nextAttemptAt != null) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || clockSkewSeconds != null) {
      map['clock_skew_seconds'] = Variable<int>(clockSkewSeconds);
    }
    return map;
  }

  JournalQueueCompanion toCompanion(bool nullToAbsent) {
    return JournalQueueCompanion(
      clientId: Value(clientId),
      payload: Value(payload),
      clientCreatedAt: Value(clientCreatedAt),
      attempts: Value(attempts),
      nextAttemptAt: nextAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(nextAttemptAt),
      status: Value(status),
      clockSkewSeconds: clockSkewSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(clockSkewSeconds),
    );
  }

  factory JournalQueueData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JournalQueueData(
      clientId: serializer.fromJson<String>(json['clientId']),
      payload: serializer.fromJson<String>(json['payload']),
      clientCreatedAt: serializer.fromJson<DateTime>(json['clientCreatedAt']),
      attempts: serializer.fromJson<int>(json['attempts']),
      nextAttemptAt: serializer.fromJson<DateTime?>(json['nextAttemptAt']),
      status: serializer.fromJson<String>(json['status']),
      clockSkewSeconds: serializer.fromJson<int?>(json['clockSkewSeconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientId': serializer.toJson<String>(clientId),
      'payload': serializer.toJson<String>(payload),
      'clientCreatedAt': serializer.toJson<DateTime>(clientCreatedAt),
      'attempts': serializer.toJson<int>(attempts),
      'nextAttemptAt': serializer.toJson<DateTime?>(nextAttemptAt),
      'status': serializer.toJson<String>(status),
      'clockSkewSeconds': serializer.toJson<int?>(clockSkewSeconds),
    };
  }

  JournalQueueData copyWith({
    String? clientId,
    String? payload,
    DateTime? clientCreatedAt,
    int? attempts,
    Value<DateTime?> nextAttemptAt = const Value.absent(),
    String? status,
    Value<int?> clockSkewSeconds = const Value.absent(),
  }) => JournalQueueData(
    clientId: clientId ?? this.clientId,
    payload: payload ?? this.payload,
    clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
    attempts: attempts ?? this.attempts,
    nextAttemptAt: nextAttemptAt.present
        ? nextAttemptAt.value
        : this.nextAttemptAt,
    status: status ?? this.status,
    clockSkewSeconds: clockSkewSeconds.present
        ? clockSkewSeconds.value
        : this.clockSkewSeconds,
  );
  JournalQueueData copyWithCompanion(JournalQueueCompanion data) {
    return JournalQueueData(
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      payload: data.payload.present ? data.payload.value : this.payload,
      clientCreatedAt: data.clientCreatedAt.present
          ? data.clientCreatedAt.value
          : this.clientCreatedAt,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      nextAttemptAt: data.nextAttemptAt.present
          ? data.nextAttemptAt.value
          : this.nextAttemptAt,
      status: data.status.present ? data.status.value : this.status,
      clockSkewSeconds: data.clockSkewSeconds.present
          ? data.clockSkewSeconds.value
          : this.clockSkewSeconds,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JournalQueueData(')
          ..write('clientId: $clientId, ')
          ..write('payload: $payload, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('status: $status, ')
          ..write('clockSkewSeconds: $clockSkewSeconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    clientId,
    payload,
    clientCreatedAt,
    attempts,
    nextAttemptAt,
    status,
    clockSkewSeconds,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JournalQueueData &&
          other.clientId == this.clientId &&
          other.payload == this.payload &&
          other.clientCreatedAt == this.clientCreatedAt &&
          other.attempts == this.attempts &&
          other.nextAttemptAt == this.nextAttemptAt &&
          other.status == this.status &&
          other.clockSkewSeconds == this.clockSkewSeconds);
}

class JournalQueueCompanion extends UpdateCompanion<JournalQueueData> {
  final Value<String> clientId;
  final Value<String> payload;
  final Value<DateTime> clientCreatedAt;
  final Value<int> attempts;
  final Value<DateTime?> nextAttemptAt;
  final Value<String> status;
  final Value<int?> clockSkewSeconds;
  final Value<int> rowid;
  const JournalQueueCompanion({
    this.clientId = const Value.absent(),
    this.payload = const Value.absent(),
    this.clientCreatedAt = const Value.absent(),
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.status = const Value.absent(),
    this.clockSkewSeconds = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JournalQueueCompanion.insert({
    required String clientId,
    required String payload,
    required DateTime clientCreatedAt,
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.status = const Value.absent(),
    this.clockSkewSeconds = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : clientId = Value(clientId),
       payload = Value(payload),
       clientCreatedAt = Value(clientCreatedAt);
  static Insertable<JournalQueueData> custom({
    Expression<String>? clientId,
    Expression<String>? payload,
    Expression<DateTime>? clientCreatedAt,
    Expression<int>? attempts,
    Expression<DateTime>? nextAttemptAt,
    Expression<String>? status,
    Expression<int>? clockSkewSeconds,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientId != null) 'client_id': clientId,
      if (payload != null) 'payload': payload,
      if (clientCreatedAt != null) 'client_created_at': clientCreatedAt,
      if (attempts != null) 'attempts': attempts,
      if (nextAttemptAt != null) 'next_attempt_at': nextAttemptAt,
      if (status != null) 'status': status,
      if (clockSkewSeconds != null) 'clock_skew_seconds': clockSkewSeconds,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JournalQueueCompanion copyWith({
    Value<String>? clientId,
    Value<String>? payload,
    Value<DateTime>? clientCreatedAt,
    Value<int>? attempts,
    Value<DateTime?>? nextAttemptAt,
    Value<String>? status,
    Value<int?>? clockSkewSeconds,
    Value<int>? rowid,
  }) {
    return JournalQueueCompanion(
      clientId: clientId ?? this.clientId,
      payload: payload ?? this.payload,
      clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
      attempts: attempts ?? this.attempts,
      nextAttemptAt: nextAttemptAt ?? this.nextAttemptAt,
      status: status ?? this.status,
      clockSkewSeconds: clockSkewSeconds ?? this.clockSkewSeconds,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (clientCreatedAt.present) {
      map['client_created_at'] = Variable<DateTime>(clientCreatedAt.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (nextAttemptAt.present) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (clockSkewSeconds.present) {
      map['clock_skew_seconds'] = Variable<int>(clockSkewSeconds.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JournalQueueCompanion(')
          ..write('clientId: $clientId, ')
          ..write('payload: $payload, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('status: $status, ')
          ..write('clockSkewSeconds: $clockSkewSeconds, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CrisisQueueTable extends CrisisQueue
    with TableInfo<$CrisisQueueTable, CrisisQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CrisisQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientIdMeta = const VerificationMeta(
    'clientId',
  );
  @override
  late final GeneratedColumn<String> clientId = GeneratedColumn<String>(
    'client_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientCreatedAtMeta = const VerificationMeta(
    'clientCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> clientCreatedAt =
      GeneratedColumn<DateTime>(
        'client_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _nextAttemptAtMeta = const VerificationMeta(
    'nextAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextAttemptAt =
      GeneratedColumn<DateTime>(
        'next_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _clockSkewSecondsMeta = const VerificationMeta(
    'clockSkewSeconds',
  );
  @override
  late final GeneratedColumn<int> clockSkewSeconds = GeneratedColumn<int>(
    'clock_skew_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clientId,
    payload,
    clientCreatedAt,
    attempts,
    nextAttemptAt,
    status,
    clockSkewSeconds,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'crisis_queue';
  @override
  VerificationContext validateIntegrity(
    Insertable<CrisisQueueData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_id')) {
      context.handle(
        _clientIdMeta,
        clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('client_created_at')) {
      context.handle(
        _clientCreatedAtMeta,
        clientCreatedAt.isAcceptableOrUnknown(
          data['client_created_at']!,
          _clientCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientCreatedAtMeta);
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('next_attempt_at')) {
      context.handle(
        _nextAttemptAtMeta,
        nextAttemptAt.isAcceptableOrUnknown(
          data['next_attempt_at']!,
          _nextAttemptAtMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('clock_skew_seconds')) {
      context.handle(
        _clockSkewSecondsMeta,
        clockSkewSeconds.isAcceptableOrUnknown(
          data['clock_skew_seconds']!,
          _clockSkewSecondsMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientId};
  @override
  CrisisQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CrisisQueueData(
      clientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      clientCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}client_created_at'],
      )!,
      attempts: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attempts'],
      )!,
      nextAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_attempt_at'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      clockSkewSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}clock_skew_seconds'],
      ),
    );
  }

  @override
  $CrisisQueueTable createAlias(String alias) {
    return $CrisisQueueTable(attachedDatabase, alias);
  }
}

class CrisisQueueData extends DataClass implements Insertable<CrisisQueueData> {
  final String clientId;
  final String payload;
  final DateTime clientCreatedAt;
  final int attempts;
  final DateTime? nextAttemptAt;
  final String status;
  final int? clockSkewSeconds;
  const CrisisQueueData({
    required this.clientId,
    required this.payload,
    required this.clientCreatedAt,
    required this.attempts,
    this.nextAttemptAt,
    required this.status,
    this.clockSkewSeconds,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_id'] = Variable<String>(clientId);
    map['payload'] = Variable<String>(payload);
    map['client_created_at'] = Variable<DateTime>(clientCreatedAt);
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || nextAttemptAt != null) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || clockSkewSeconds != null) {
      map['clock_skew_seconds'] = Variable<int>(clockSkewSeconds);
    }
    return map;
  }

  CrisisQueueCompanion toCompanion(bool nullToAbsent) {
    return CrisisQueueCompanion(
      clientId: Value(clientId),
      payload: Value(payload),
      clientCreatedAt: Value(clientCreatedAt),
      attempts: Value(attempts),
      nextAttemptAt: nextAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(nextAttemptAt),
      status: Value(status),
      clockSkewSeconds: clockSkewSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(clockSkewSeconds),
    );
  }

  factory CrisisQueueData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CrisisQueueData(
      clientId: serializer.fromJson<String>(json['clientId']),
      payload: serializer.fromJson<String>(json['payload']),
      clientCreatedAt: serializer.fromJson<DateTime>(json['clientCreatedAt']),
      attempts: serializer.fromJson<int>(json['attempts']),
      nextAttemptAt: serializer.fromJson<DateTime?>(json['nextAttemptAt']),
      status: serializer.fromJson<String>(json['status']),
      clockSkewSeconds: serializer.fromJson<int?>(json['clockSkewSeconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientId': serializer.toJson<String>(clientId),
      'payload': serializer.toJson<String>(payload),
      'clientCreatedAt': serializer.toJson<DateTime>(clientCreatedAt),
      'attempts': serializer.toJson<int>(attempts),
      'nextAttemptAt': serializer.toJson<DateTime?>(nextAttemptAt),
      'status': serializer.toJson<String>(status),
      'clockSkewSeconds': serializer.toJson<int?>(clockSkewSeconds),
    };
  }

  CrisisQueueData copyWith({
    String? clientId,
    String? payload,
    DateTime? clientCreatedAt,
    int? attempts,
    Value<DateTime?> nextAttemptAt = const Value.absent(),
    String? status,
    Value<int?> clockSkewSeconds = const Value.absent(),
  }) => CrisisQueueData(
    clientId: clientId ?? this.clientId,
    payload: payload ?? this.payload,
    clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
    attempts: attempts ?? this.attempts,
    nextAttemptAt: nextAttemptAt.present
        ? nextAttemptAt.value
        : this.nextAttemptAt,
    status: status ?? this.status,
    clockSkewSeconds: clockSkewSeconds.present
        ? clockSkewSeconds.value
        : this.clockSkewSeconds,
  );
  CrisisQueueData copyWithCompanion(CrisisQueueCompanion data) {
    return CrisisQueueData(
      clientId: data.clientId.present ? data.clientId.value : this.clientId,
      payload: data.payload.present ? data.payload.value : this.payload,
      clientCreatedAt: data.clientCreatedAt.present
          ? data.clientCreatedAt.value
          : this.clientCreatedAt,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      nextAttemptAt: data.nextAttemptAt.present
          ? data.nextAttemptAt.value
          : this.nextAttemptAt,
      status: data.status.present ? data.status.value : this.status,
      clockSkewSeconds: data.clockSkewSeconds.present
          ? data.clockSkewSeconds.value
          : this.clockSkewSeconds,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CrisisQueueData(')
          ..write('clientId: $clientId, ')
          ..write('payload: $payload, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('status: $status, ')
          ..write('clockSkewSeconds: $clockSkewSeconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    clientId,
    payload,
    clientCreatedAt,
    attempts,
    nextAttemptAt,
    status,
    clockSkewSeconds,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CrisisQueueData &&
          other.clientId == this.clientId &&
          other.payload == this.payload &&
          other.clientCreatedAt == this.clientCreatedAt &&
          other.attempts == this.attempts &&
          other.nextAttemptAt == this.nextAttemptAt &&
          other.status == this.status &&
          other.clockSkewSeconds == this.clockSkewSeconds);
}

class CrisisQueueCompanion extends UpdateCompanion<CrisisQueueData> {
  final Value<String> clientId;
  final Value<String> payload;
  final Value<DateTime> clientCreatedAt;
  final Value<int> attempts;
  final Value<DateTime?> nextAttemptAt;
  final Value<String> status;
  final Value<int?> clockSkewSeconds;
  final Value<int> rowid;
  const CrisisQueueCompanion({
    this.clientId = const Value.absent(),
    this.payload = const Value.absent(),
    this.clientCreatedAt = const Value.absent(),
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.status = const Value.absent(),
    this.clockSkewSeconds = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CrisisQueueCompanion.insert({
    required String clientId,
    required String payload,
    required DateTime clientCreatedAt,
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.status = const Value.absent(),
    this.clockSkewSeconds = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : clientId = Value(clientId),
       payload = Value(payload),
       clientCreatedAt = Value(clientCreatedAt);
  static Insertable<CrisisQueueData> custom({
    Expression<String>? clientId,
    Expression<String>? payload,
    Expression<DateTime>? clientCreatedAt,
    Expression<int>? attempts,
    Expression<DateTime>? nextAttemptAt,
    Expression<String>? status,
    Expression<int>? clockSkewSeconds,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientId != null) 'client_id': clientId,
      if (payload != null) 'payload': payload,
      if (clientCreatedAt != null) 'client_created_at': clientCreatedAt,
      if (attempts != null) 'attempts': attempts,
      if (nextAttemptAt != null) 'next_attempt_at': nextAttemptAt,
      if (status != null) 'status': status,
      if (clockSkewSeconds != null) 'clock_skew_seconds': clockSkewSeconds,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CrisisQueueCompanion copyWith({
    Value<String>? clientId,
    Value<String>? payload,
    Value<DateTime>? clientCreatedAt,
    Value<int>? attempts,
    Value<DateTime?>? nextAttemptAt,
    Value<String>? status,
    Value<int?>? clockSkewSeconds,
    Value<int>? rowid,
  }) {
    return CrisisQueueCompanion(
      clientId: clientId ?? this.clientId,
      payload: payload ?? this.payload,
      clientCreatedAt: clientCreatedAt ?? this.clientCreatedAt,
      attempts: attempts ?? this.attempts,
      nextAttemptAt: nextAttemptAt ?? this.nextAttemptAt,
      status: status ?? this.status,
      clockSkewSeconds: clockSkewSeconds ?? this.clockSkewSeconds,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (clientCreatedAt.present) {
      map['client_created_at'] = Variable<DateTime>(clientCreatedAt.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (nextAttemptAt.present) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (clockSkewSeconds.present) {
      map['clock_skew_seconds'] = Variable<int>(clockSkewSeconds.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CrisisQueueCompanion(')
          ..write('clientId: $clientId, ')
          ..write('payload: $payload, ')
          ..write('clientCreatedAt: $clientCreatedAt, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('status: $status, ')
          ..write('clockSkewSeconds: $clockSkewSeconds, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SafetyPlanCacheTable safetyPlanCache = $SafetyPlanCacheTable(
    this,
  );
  late final $TodayTaskCacheTable todayTaskCache = $TodayTaskCacheTable(this);
  late final $MoodHistoryCacheTable moodHistoryCache = $MoodHistoryCacheTable(
    this,
  );
  late final $EmergencyContactsTable emergencyContacts =
      $EmergencyContactsTable(this);
  late final $CheckInQueueTable checkInQueue = $CheckInQueueTable(this);
  late final $JournalQueueTable journalQueue = $JournalQueueTable(this);
  late final $CrisisQueueTable crisisQueue = $CrisisQueueTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    safetyPlanCache,
    todayTaskCache,
    moodHistoryCache,
    emergencyContacts,
    checkInQueue,
    journalQueue,
    crisisQueue,
  ];
}

typedef $$SafetyPlanCacheTableCreateCompanionBuilder =
    SafetyPlanCacheCompanion Function({
      Value<int> id,
      Value<String?> field1,
      Value<String?> field2,
      Value<String?> field3,
      Value<String?> field4,
      Value<String?> field5,
      Value<bool> sharedWithTherapist,
      required DateTime updatedAt,
      required DateTime fetchedAt,
    });
typedef $$SafetyPlanCacheTableUpdateCompanionBuilder =
    SafetyPlanCacheCompanion Function({
      Value<int> id,
      Value<String?> field1,
      Value<String?> field2,
      Value<String?> field3,
      Value<String?> field4,
      Value<String?> field5,
      Value<bool> sharedWithTherapist,
      Value<DateTime> updatedAt,
      Value<DateTime> fetchedAt,
    });

class $$SafetyPlanCacheTableFilterComposer
    extends Composer<_$AppDatabase, $SafetyPlanCacheTable> {
  $$SafetyPlanCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get field1 => $composableBuilder(
    column: $table.field1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get field2 => $composableBuilder(
    column: $table.field2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get field3 => $composableBuilder(
    column: $table.field3,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get field4 => $composableBuilder(
    column: $table.field4,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get field5 => $composableBuilder(
    column: $table.field5,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get sharedWithTherapist => $composableBuilder(
    column: $table.sharedWithTherapist,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SafetyPlanCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $SafetyPlanCacheTable> {
  $$SafetyPlanCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get field1 => $composableBuilder(
    column: $table.field1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get field2 => $composableBuilder(
    column: $table.field2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get field3 => $composableBuilder(
    column: $table.field3,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get field4 => $composableBuilder(
    column: $table.field4,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get field5 => $composableBuilder(
    column: $table.field5,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get sharedWithTherapist => $composableBuilder(
    column: $table.sharedWithTherapist,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SafetyPlanCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $SafetyPlanCacheTable> {
  $$SafetyPlanCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get field1 =>
      $composableBuilder(column: $table.field1, builder: (column) => column);

  GeneratedColumn<String> get field2 =>
      $composableBuilder(column: $table.field2, builder: (column) => column);

  GeneratedColumn<String> get field3 =>
      $composableBuilder(column: $table.field3, builder: (column) => column);

  GeneratedColumn<String> get field4 =>
      $composableBuilder(column: $table.field4, builder: (column) => column);

  GeneratedColumn<String> get field5 =>
      $composableBuilder(column: $table.field5, builder: (column) => column);

  GeneratedColumn<bool> get sharedWithTherapist => $composableBuilder(
    column: $table.sharedWithTherapist,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get fetchedAt =>
      $composableBuilder(column: $table.fetchedAt, builder: (column) => column);
}

class $$SafetyPlanCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SafetyPlanCacheTable,
          SafetyPlanCacheData,
          $$SafetyPlanCacheTableFilterComposer,
          $$SafetyPlanCacheTableOrderingComposer,
          $$SafetyPlanCacheTableAnnotationComposer,
          $$SafetyPlanCacheTableCreateCompanionBuilder,
          $$SafetyPlanCacheTableUpdateCompanionBuilder,
          (
            SafetyPlanCacheData,
            BaseReferences<
              _$AppDatabase,
              $SafetyPlanCacheTable,
              SafetyPlanCacheData
            >,
          ),
          SafetyPlanCacheData,
          PrefetchHooks Function()
        > {
  $$SafetyPlanCacheTableTableManager(
    _$AppDatabase db,
    $SafetyPlanCacheTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SafetyPlanCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SafetyPlanCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SafetyPlanCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> field1 = const Value.absent(),
                Value<String?> field2 = const Value.absent(),
                Value<String?> field3 = const Value.absent(),
                Value<String?> field4 = const Value.absent(),
                Value<String?> field5 = const Value.absent(),
                Value<bool> sharedWithTherapist = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime> fetchedAt = const Value.absent(),
              }) => SafetyPlanCacheCompanion(
                id: id,
                field1: field1,
                field2: field2,
                field3: field3,
                field4: field4,
                field5: field5,
                sharedWithTherapist: sharedWithTherapist,
                updatedAt: updatedAt,
                fetchedAt: fetchedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> field1 = const Value.absent(),
                Value<String?> field2 = const Value.absent(),
                Value<String?> field3 = const Value.absent(),
                Value<String?> field4 = const Value.absent(),
                Value<String?> field5 = const Value.absent(),
                Value<bool> sharedWithTherapist = const Value.absent(),
                required DateTime updatedAt,
                required DateTime fetchedAt,
              }) => SafetyPlanCacheCompanion.insert(
                id: id,
                field1: field1,
                field2: field2,
                field3: field3,
                field4: field4,
                field5: field5,
                sharedWithTherapist: sharedWithTherapist,
                updatedAt: updatedAt,
                fetchedAt: fetchedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SafetyPlanCacheTable, SafetyPlanCacheData>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $SafetyPlanCacheTable,
                    SafetyPlanCacheData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SafetyPlanCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SafetyPlanCacheTable,
      SafetyPlanCacheData,
      $$SafetyPlanCacheTableFilterComposer,
      $$SafetyPlanCacheTableOrderingComposer,
      $$SafetyPlanCacheTableAnnotationComposer,
      $$SafetyPlanCacheTableCreateCompanionBuilder,
      $$SafetyPlanCacheTableUpdateCompanionBuilder,
      (
        SafetyPlanCacheData,
        BaseReferences<
          _$AppDatabase,
          $SafetyPlanCacheTable,
          SafetyPlanCacheData
        >,
      ),
      SafetyPlanCacheData,
      PrefetchHooks Function()
    >;
typedef $$TodayTaskCacheTableCreateCompanionBuilder =
    TodayTaskCacheCompanion Function({
      Value<int> id,
      required String taskId,
      required String taskKey,
      required String title,
      required String assignedFor,
      Value<DateTime?> completedAt,
      Value<String?> swapReason,
      Value<bool> canSwap,
      Value<bool> checkInDone,
      Value<bool> reflectionAvailable,
      required DateTime fetchedAt,
    });
typedef $$TodayTaskCacheTableUpdateCompanionBuilder =
    TodayTaskCacheCompanion Function({
      Value<int> id,
      Value<String> taskId,
      Value<String> taskKey,
      Value<String> title,
      Value<String> assignedFor,
      Value<DateTime?> completedAt,
      Value<String?> swapReason,
      Value<bool> canSwap,
      Value<bool> checkInDone,
      Value<bool> reflectionAvailable,
      Value<DateTime> fetchedAt,
    });

class $$TodayTaskCacheTableFilterComposer
    extends Composer<_$AppDatabase, $TodayTaskCacheTable> {
  $$TodayTaskCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get taskKey => $composableBuilder(
    column: $table.taskKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get assignedFor => $composableBuilder(
    column: $table.assignedFor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get swapReason => $composableBuilder(
    column: $table.swapReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get canSwap => $composableBuilder(
    column: $table.canSwap,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get checkInDone => $composableBuilder(
    column: $table.checkInDone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get reflectionAvailable => $composableBuilder(
    column: $table.reflectionAvailable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TodayTaskCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $TodayTaskCacheTable> {
  $$TodayTaskCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get taskKey => $composableBuilder(
    column: $table.taskKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get assignedFor => $composableBuilder(
    column: $table.assignedFor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get swapReason => $composableBuilder(
    column: $table.swapReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get canSwap => $composableBuilder(
    column: $table.canSwap,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get checkInDone => $composableBuilder(
    column: $table.checkInDone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get reflectionAvailable => $composableBuilder(
    column: $table.reflectionAvailable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TodayTaskCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $TodayTaskCacheTable> {
  $$TodayTaskCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get taskId =>
      $composableBuilder(column: $table.taskId, builder: (column) => column);

  GeneratedColumn<String> get taskKey =>
      $composableBuilder(column: $table.taskKey, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get assignedFor => $composableBuilder(
    column: $table.assignedFor,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get swapReason => $composableBuilder(
    column: $table.swapReason,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get canSwap =>
      $composableBuilder(column: $table.canSwap, builder: (column) => column);

  GeneratedColumn<bool> get checkInDone => $composableBuilder(
    column: $table.checkInDone,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get reflectionAvailable => $composableBuilder(
    column: $table.reflectionAvailable,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fetchedAt =>
      $composableBuilder(column: $table.fetchedAt, builder: (column) => column);
}

class $$TodayTaskCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TodayTaskCacheTable,
          TodayTaskCacheData,
          $$TodayTaskCacheTableFilterComposer,
          $$TodayTaskCacheTableOrderingComposer,
          $$TodayTaskCacheTableAnnotationComposer,
          $$TodayTaskCacheTableCreateCompanionBuilder,
          $$TodayTaskCacheTableUpdateCompanionBuilder,
          (
            TodayTaskCacheData,
            BaseReferences<
              _$AppDatabase,
              $TodayTaskCacheTable,
              TodayTaskCacheData
            >,
          ),
          TodayTaskCacheData,
          PrefetchHooks Function()
        > {
  $$TodayTaskCacheTableTableManager(
    _$AppDatabase db,
    $TodayTaskCacheTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TodayTaskCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TodayTaskCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TodayTaskCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> taskId = const Value.absent(),
                Value<String> taskKey = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> assignedFor = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<String?> swapReason = const Value.absent(),
                Value<bool> canSwap = const Value.absent(),
                Value<bool> checkInDone = const Value.absent(),
                Value<bool> reflectionAvailable = const Value.absent(),
                Value<DateTime> fetchedAt = const Value.absent(),
              }) => TodayTaskCacheCompanion(
                id: id,
                taskId: taskId,
                taskKey: taskKey,
                title: title,
                assignedFor: assignedFor,
                completedAt: completedAt,
                swapReason: swapReason,
                canSwap: canSwap,
                checkInDone: checkInDone,
                reflectionAvailable: reflectionAvailable,
                fetchedAt: fetchedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String taskId,
                required String taskKey,
                required String title,
                required String assignedFor,
                Value<DateTime?> completedAt = const Value.absent(),
                Value<String?> swapReason = const Value.absent(),
                Value<bool> canSwap = const Value.absent(),
                Value<bool> checkInDone = const Value.absent(),
                Value<bool> reflectionAvailable = const Value.absent(),
                required DateTime fetchedAt,
              }) => TodayTaskCacheCompanion.insert(
                id: id,
                taskId: taskId,
                taskKey: taskKey,
                title: title,
                assignedFor: assignedFor,
                completedAt: completedAt,
                swapReason: swapReason,
                canSwap: canSwap,
                checkInDone: checkInDone,
                reflectionAvailable: reflectionAvailable,
                fetchedAt: fetchedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TodayTaskCacheTable, TodayTaskCacheData>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $TodayTaskCacheTable,
                    TodayTaskCacheData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TodayTaskCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TodayTaskCacheTable,
      TodayTaskCacheData,
      $$TodayTaskCacheTableFilterComposer,
      $$TodayTaskCacheTableOrderingComposer,
      $$TodayTaskCacheTableAnnotationComposer,
      $$TodayTaskCacheTableCreateCompanionBuilder,
      $$TodayTaskCacheTableUpdateCompanionBuilder,
      (
        TodayTaskCacheData,
        BaseReferences<_$AppDatabase, $TodayTaskCacheTable, TodayTaskCacheData>,
      ),
      TodayTaskCacheData,
      PrefetchHooks Function()
    >;
typedef $$MoodHistoryCacheTableCreateCompanionBuilder =
    MoodHistoryCacheCompanion Function({
      Value<int> id,
      required String checkInId,
      required String clientId,
      required int mood,
      Value<String> feelingWords,
      Value<String?> bodySignal,
      required DateTime clientCreatedAt,
      required DateTime serverReceivedAt,
    });
typedef $$MoodHistoryCacheTableUpdateCompanionBuilder =
    MoodHistoryCacheCompanion Function({
      Value<int> id,
      Value<String> checkInId,
      Value<String> clientId,
      Value<int> mood,
      Value<String> feelingWords,
      Value<String?> bodySignal,
      Value<DateTime> clientCreatedAt,
      Value<DateTime> serverReceivedAt,
    });

class $$MoodHistoryCacheTableFilterComposer
    extends Composer<_$AppDatabase, $MoodHistoryCacheTable> {
  $$MoodHistoryCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checkInId => $composableBuilder(
    column: $table.checkInId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mood => $composableBuilder(
    column: $table.mood,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get feelingWords => $composableBuilder(
    column: $table.feelingWords,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bodySignal => $composableBuilder(
    column: $table.bodySignal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get serverReceivedAt => $composableBuilder(
    column: $table.serverReceivedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MoodHistoryCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $MoodHistoryCacheTable> {
  $$MoodHistoryCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checkInId => $composableBuilder(
    column: $table.checkInId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mood => $composableBuilder(
    column: $table.mood,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get feelingWords => $composableBuilder(
    column: $table.feelingWords,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bodySignal => $composableBuilder(
    column: $table.bodySignal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get serverReceivedAt => $composableBuilder(
    column: $table.serverReceivedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MoodHistoryCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $MoodHistoryCacheTable> {
  $$MoodHistoryCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get checkInId =>
      $composableBuilder(column: $table.checkInId, builder: (column) => column);

  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<int> get mood =>
      $composableBuilder(column: $table.mood, builder: (column) => column);

  GeneratedColumn<String> get feelingWords => $composableBuilder(
    column: $table.feelingWords,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bodySignal => $composableBuilder(
    column: $table.bodySignal,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get serverReceivedAt => $composableBuilder(
    column: $table.serverReceivedAt,
    builder: (column) => column,
  );
}

class $$MoodHistoryCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MoodHistoryCacheTable,
          MoodHistoryCacheData,
          $$MoodHistoryCacheTableFilterComposer,
          $$MoodHistoryCacheTableOrderingComposer,
          $$MoodHistoryCacheTableAnnotationComposer,
          $$MoodHistoryCacheTableCreateCompanionBuilder,
          $$MoodHistoryCacheTableUpdateCompanionBuilder,
          (
            MoodHistoryCacheData,
            BaseReferences<
              _$AppDatabase,
              $MoodHistoryCacheTable,
              MoodHistoryCacheData
            >,
          ),
          MoodHistoryCacheData,
          PrefetchHooks Function()
        > {
  $$MoodHistoryCacheTableTableManager(
    _$AppDatabase db,
    $MoodHistoryCacheTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoodHistoryCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoodHistoryCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoodHistoryCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> checkInId = const Value.absent(),
                Value<String> clientId = const Value.absent(),
                Value<int> mood = const Value.absent(),
                Value<String> feelingWords = const Value.absent(),
                Value<String?> bodySignal = const Value.absent(),
                Value<DateTime> clientCreatedAt = const Value.absent(),
                Value<DateTime> serverReceivedAt = const Value.absent(),
              }) => MoodHistoryCacheCompanion(
                id: id,
                checkInId: checkInId,
                clientId: clientId,
                mood: mood,
                feelingWords: feelingWords,
                bodySignal: bodySignal,
                clientCreatedAt: clientCreatedAt,
                serverReceivedAt: serverReceivedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String checkInId,
                required String clientId,
                required int mood,
                Value<String> feelingWords = const Value.absent(),
                Value<String?> bodySignal = const Value.absent(),
                required DateTime clientCreatedAt,
                required DateTime serverReceivedAt,
              }) => MoodHistoryCacheCompanion.insert(
                id: id,
                checkInId: checkInId,
                clientId: clientId,
                mood: mood,
                feelingWords: feelingWords,
                bodySignal: bodySignal,
                clientCreatedAt: clientCreatedAt,
                serverReceivedAt: serverReceivedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MoodHistoryCacheTable, MoodHistoryCacheData>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $MoodHistoryCacheTable,
                    MoodHistoryCacheData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MoodHistoryCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MoodHistoryCacheTable,
      MoodHistoryCacheData,
      $$MoodHistoryCacheTableFilterComposer,
      $$MoodHistoryCacheTableOrderingComposer,
      $$MoodHistoryCacheTableAnnotationComposer,
      $$MoodHistoryCacheTableCreateCompanionBuilder,
      $$MoodHistoryCacheTableUpdateCompanionBuilder,
      (
        MoodHistoryCacheData,
        BaseReferences<
          _$AppDatabase,
          $MoodHistoryCacheTable,
          MoodHistoryCacheData
        >,
      ),
      MoodHistoryCacheData,
      PrefetchHooks Function()
    >;
typedef $$EmergencyContactsTableCreateCompanionBuilder =
    EmergencyContactsCompanion Function({
      required String id,
      required String name,
      Value<String?> number,
      required String kind,
      Value<bool> readOnly,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$EmergencyContactsTableUpdateCompanionBuilder =
    EmergencyContactsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> number,
      Value<String> kind,
      Value<bool> readOnly,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$EmergencyContactsTableFilterComposer
    extends Composer<_$AppDatabase, $EmergencyContactsTable> {
  $$EmergencyContactsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get readOnly => $composableBuilder(
    column: $table.readOnly,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$EmergencyContactsTableOrderingComposer
    extends Composer<_$AppDatabase, $EmergencyContactsTable> {
  $$EmergencyContactsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get readOnly => $composableBuilder(
    column: $table.readOnly,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EmergencyContactsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EmergencyContactsTable> {
  $$EmergencyContactsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<bool> get readOnly =>
      $composableBuilder(column: $table.readOnly, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$EmergencyContactsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EmergencyContactsTable,
          EmergencyContact,
          $$EmergencyContactsTableFilterComposer,
          $$EmergencyContactsTableOrderingComposer,
          $$EmergencyContactsTableAnnotationComposer,
          $$EmergencyContactsTableCreateCompanionBuilder,
          $$EmergencyContactsTableUpdateCompanionBuilder,
          (
            EmergencyContact,
            BaseReferences<
              _$AppDatabase,
              $EmergencyContactsTable,
              EmergencyContact
            >,
          ),
          EmergencyContact,
          PrefetchHooks Function()
        > {
  $$EmergencyContactsTableTableManager(
    _$AppDatabase db,
    $EmergencyContactsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EmergencyContactsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EmergencyContactsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EmergencyContactsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> number = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<bool> readOnly = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EmergencyContactsCompanion(
                id: id,
                name: name,
                number: number,
                kind: kind,
                readOnly: readOnly,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> number = const Value.absent(),
                required String kind,
                Value<bool> readOnly = const Value.absent(),
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => EmergencyContactsCompanion.insert(
                id: id,
                name: name,
                number: number,
                kind: kind,
                readOnly: readOnly,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EmergencyContactsTable, EmergencyContact>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $EmergencyContactsTable,
                    EmergencyContact
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$EmergencyContactsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EmergencyContactsTable,
      EmergencyContact,
      $$EmergencyContactsTableFilterComposer,
      $$EmergencyContactsTableOrderingComposer,
      $$EmergencyContactsTableAnnotationComposer,
      $$EmergencyContactsTableCreateCompanionBuilder,
      $$EmergencyContactsTableUpdateCompanionBuilder,
      (
        EmergencyContact,
        BaseReferences<
          _$AppDatabase,
          $EmergencyContactsTable,
          EmergencyContact
        >,
      ),
      EmergencyContact,
      PrefetchHooks Function()
    >;
typedef $$CheckInQueueTableCreateCompanionBuilder =
    CheckInQueueCompanion Function({
      required String clientId,
      required String payload,
      required DateTime clientCreatedAt,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String> status,
      Value<int?> clockSkewSeconds,
      Value<int> rowid,
    });
typedef $$CheckInQueueTableUpdateCompanionBuilder =
    CheckInQueueCompanion Function({
      Value<String> clientId,
      Value<String> payload,
      Value<DateTime> clientCreatedAt,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String> status,
      Value<int?> clockSkewSeconds,
      Value<int> rowid,
    });

class $$CheckInQueueTableFilterComposer
    extends Composer<_$AppDatabase, $CheckInQueueTable> {
  $$CheckInQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CheckInQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $CheckInQueueTable> {
  $$CheckInQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CheckInQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $CheckInQueueTable> {
  $$CheckInQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => column,
  );
}

class $$CheckInQueueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CheckInQueueTable,
          CheckInQueueData,
          $$CheckInQueueTableFilterComposer,
          $$CheckInQueueTableOrderingComposer,
          $$CheckInQueueTableAnnotationComposer,
          $$CheckInQueueTableCreateCompanionBuilder,
          $$CheckInQueueTableUpdateCompanionBuilder,
          (
            CheckInQueueData,
            BaseReferences<_$AppDatabase, $CheckInQueueTable, CheckInQueueData>,
          ),
          CheckInQueueData,
          PrefetchHooks Function()
        > {
  $$CheckInQueueTableTableManager(_$AppDatabase db, $CheckInQueueTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CheckInQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CheckInQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CheckInQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> clientId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> clientCreatedAt = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int?> clockSkewSeconds = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CheckInQueueCompanion(
                clientId: clientId,
                payload: payload,
                clientCreatedAt: clientCreatedAt,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                status: status,
                clockSkewSeconds: clockSkewSeconds,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientId,
                required String payload,
                required DateTime clientCreatedAt,
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int?> clockSkewSeconds = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CheckInQueueCompanion.insert(
                clientId: clientId,
                payload: payload,
                clientCreatedAt: clientCreatedAt,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                status: status,
                clockSkewSeconds: clockSkewSeconds,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CheckInQueueTable, CheckInQueueData>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $CheckInQueueTable,
                    CheckInQueueData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CheckInQueueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CheckInQueueTable,
      CheckInQueueData,
      $$CheckInQueueTableFilterComposer,
      $$CheckInQueueTableOrderingComposer,
      $$CheckInQueueTableAnnotationComposer,
      $$CheckInQueueTableCreateCompanionBuilder,
      $$CheckInQueueTableUpdateCompanionBuilder,
      (
        CheckInQueueData,
        BaseReferences<_$AppDatabase, $CheckInQueueTable, CheckInQueueData>,
      ),
      CheckInQueueData,
      PrefetchHooks Function()
    >;
typedef $$JournalQueueTableCreateCompanionBuilder =
    JournalQueueCompanion Function({
      required String clientId,
      required String payload,
      required DateTime clientCreatedAt,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String> status,
      Value<int?> clockSkewSeconds,
      Value<int> rowid,
    });
typedef $$JournalQueueTableUpdateCompanionBuilder =
    JournalQueueCompanion Function({
      Value<String> clientId,
      Value<String> payload,
      Value<DateTime> clientCreatedAt,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String> status,
      Value<int?> clockSkewSeconds,
      Value<int> rowid,
    });

class $$JournalQueueTableFilterComposer
    extends Composer<_$AppDatabase, $JournalQueueTable> {
  $$JournalQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => ColumnFilters(column),
  );
}

class $$JournalQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $JournalQueueTable> {
  $$JournalQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$JournalQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $JournalQueueTable> {
  $$JournalQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => column,
  );
}

class $$JournalQueueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $JournalQueueTable,
          JournalQueueData,
          $$JournalQueueTableFilterComposer,
          $$JournalQueueTableOrderingComposer,
          $$JournalQueueTableAnnotationComposer,
          $$JournalQueueTableCreateCompanionBuilder,
          $$JournalQueueTableUpdateCompanionBuilder,
          (
            JournalQueueData,
            BaseReferences<_$AppDatabase, $JournalQueueTable, JournalQueueData>,
          ),
          JournalQueueData,
          PrefetchHooks Function()
        > {
  $$JournalQueueTableTableManager(_$AppDatabase db, $JournalQueueTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JournalQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JournalQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JournalQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> clientId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> clientCreatedAt = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int?> clockSkewSeconds = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JournalQueueCompanion(
                clientId: clientId,
                payload: payload,
                clientCreatedAt: clientCreatedAt,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                status: status,
                clockSkewSeconds: clockSkewSeconds,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientId,
                required String payload,
                required DateTime clientCreatedAt,
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int?> clockSkewSeconds = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JournalQueueCompanion.insert(
                clientId: clientId,
                payload: payload,
                clientCreatedAt: clientCreatedAt,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                status: status,
                clockSkewSeconds: clockSkewSeconds,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$JournalQueueTable, JournalQueueData>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $JournalQueueTable,
                    JournalQueueData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$JournalQueueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $JournalQueueTable,
      JournalQueueData,
      $$JournalQueueTableFilterComposer,
      $$JournalQueueTableOrderingComposer,
      $$JournalQueueTableAnnotationComposer,
      $$JournalQueueTableCreateCompanionBuilder,
      $$JournalQueueTableUpdateCompanionBuilder,
      (
        JournalQueueData,
        BaseReferences<_$AppDatabase, $JournalQueueTable, JournalQueueData>,
      ),
      JournalQueueData,
      PrefetchHooks Function()
    >;
typedef $$CrisisQueueTableCreateCompanionBuilder =
    CrisisQueueCompanion Function({
      required String clientId,
      required String payload,
      required DateTime clientCreatedAt,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String> status,
      Value<int?> clockSkewSeconds,
      Value<int> rowid,
    });
typedef $$CrisisQueueTableUpdateCompanionBuilder =
    CrisisQueueCompanion Function({
      Value<String> clientId,
      Value<String> payload,
      Value<DateTime> clientCreatedAt,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String> status,
      Value<int?> clockSkewSeconds,
      Value<int> rowid,
    });

class $$CrisisQueueTableFilterComposer
    extends Composer<_$AppDatabase, $CrisisQueueTable> {
  $$CrisisQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CrisisQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $CrisisQueueTable> {
  $$CrisisQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientId => $composableBuilder(
    column: $table.clientId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CrisisQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $CrisisQueueTable> {
  $$CrisisQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientId =>
      $composableBuilder(column: $table.clientId, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get clientCreatedAt => $composableBuilder(
    column: $table.clientCreatedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get clockSkewSeconds => $composableBuilder(
    column: $table.clockSkewSeconds,
    builder: (column) => column,
  );
}

class $$CrisisQueueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CrisisQueueTable,
          CrisisQueueData,
          $$CrisisQueueTableFilterComposer,
          $$CrisisQueueTableOrderingComposer,
          $$CrisisQueueTableAnnotationComposer,
          $$CrisisQueueTableCreateCompanionBuilder,
          $$CrisisQueueTableUpdateCompanionBuilder,
          (
            CrisisQueueData,
            BaseReferences<_$AppDatabase, $CrisisQueueTable, CrisisQueueData>,
          ),
          CrisisQueueData,
          PrefetchHooks Function()
        > {
  $$CrisisQueueTableTableManager(_$AppDatabase db, $CrisisQueueTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CrisisQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CrisisQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CrisisQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> clientId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> clientCreatedAt = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int?> clockSkewSeconds = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CrisisQueueCompanion(
                clientId: clientId,
                payload: payload,
                clientCreatedAt: clientCreatedAt,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                status: status,
                clockSkewSeconds: clockSkewSeconds,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientId,
                required String payload,
                required DateTime clientCreatedAt,
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int?> clockSkewSeconds = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CrisisQueueCompanion.insert(
                clientId: clientId,
                payload: payload,
                clientCreatedAt: clientCreatedAt,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                status: status,
                clockSkewSeconds: clockSkewSeconds,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CrisisQueueTable, CrisisQueueData>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $CrisisQueueTable,
                    CrisisQueueData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CrisisQueueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CrisisQueueTable,
      CrisisQueueData,
      $$CrisisQueueTableFilterComposer,
      $$CrisisQueueTableOrderingComposer,
      $$CrisisQueueTableAnnotationComposer,
      $$CrisisQueueTableCreateCompanionBuilder,
      $$CrisisQueueTableUpdateCompanionBuilder,
      (
        CrisisQueueData,
        BaseReferences<_$AppDatabase, $CrisisQueueTable, CrisisQueueData>,
      ),
      CrisisQueueData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SafetyPlanCacheTableTableManager get safetyPlanCache =>
      $$SafetyPlanCacheTableTableManager(_db, _db.safetyPlanCache);
  $$TodayTaskCacheTableTableManager get todayTaskCache =>
      $$TodayTaskCacheTableTableManager(_db, _db.todayTaskCache);
  $$MoodHistoryCacheTableTableManager get moodHistoryCache =>
      $$MoodHistoryCacheTableTableManager(_db, _db.moodHistoryCache);
  $$EmergencyContactsTableTableManager get emergencyContacts =>
      $$EmergencyContactsTableTableManager(_db, _db.emergencyContacts);
  $$CheckInQueueTableTableManager get checkInQueue =>
      $$CheckInQueueTableTableManager(_db, _db.checkInQueue);
  $$JournalQueueTableTableManager get journalQueue =>
      $$JournalQueueTableTableManager(_db, _db.journalQueue);
  $$CrisisQueueTableTableManager get crisisQueue =>
      $$CrisisQueueTableTableManager(_db, _db.crisisQueue);
}
