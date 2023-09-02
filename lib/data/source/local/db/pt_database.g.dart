// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pt_database.dart';

// ignore_for_file: type=lint
class $TimerEntityTable extends TimerEntity
    with TableInfo<$TimerEntityTable, TimerEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TimerEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _totalTimeMeta =
      const VerificationMeta('totalTime');
  @override
  late final GeneratedColumn<int> totalTime = GeneratedColumn<int>(
      'total_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _remainingTimeMeta =
      const VerificationMeta('remainingTime');
  @override
  late final GeneratedColumn<int> remainingTime = GeneratedColumn<int>(
      'remaining_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isPausedMeta =
      const VerificationMeta('isPaused');
  @override
  late final GeneratedColumn<bool> isPaused =
      GeneratedColumn<bool>('is_paused', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_paused" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  @override
  late final GeneratedColumn<bool> isCompleted =
      GeneratedColumn<bool>('is_completed', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_completed" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  @override
  late final GeneratedColumn<DateTime> updatedTime = GeneratedColumn<DateTime>(
      'updated_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        totalTime,
        remainingTime,
        isPaused,
        isCompleted,
        updatedTime
      ];
  @override
  String get aliasedName => _alias ?? 'timer_entity';
  @override
  String get actualTableName => 'timer_entity';
  @override
  VerificationContext validateIntegrity(Insertable<TimerEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('total_time')) {
      context.handle(_totalTimeMeta,
          totalTime.isAcceptableOrUnknown(data['total_time']!, _totalTimeMeta));
    } else if (isInserting) {
      context.missing(_totalTimeMeta);
    }
    if (data.containsKey('remaining_time')) {
      context.handle(
          _remainingTimeMeta,
          remainingTime.isAcceptableOrUnknown(
              data['remaining_time']!, _remainingTimeMeta));
    } else if (isInserting) {
      context.missing(_remainingTimeMeta);
    }
    if (data.containsKey('is_paused')) {
      context.handle(_isPausedMeta,
          isPaused.isAcceptableOrUnknown(data['is_paused']!, _isPausedMeta));
    } else if (isInserting) {
      context.missing(_isPausedMeta);
    }
    if (data.containsKey('is_completed')) {
      context.handle(
          _isCompletedMeta,
          isCompleted.isAcceptableOrUnknown(
              data['is_completed']!, _isCompletedMeta));
    } else if (isInserting) {
      context.missing(_isCompletedMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TimerEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TimerEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      totalTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_time'])!,
      remainingTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}remaining_time'])!,
      isPaused: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_paused'])!,
      isCompleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_completed'])!,
      updatedTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_time'])!,
    );
  }

  @override
  $TimerEntityTable createAlias(String alias) {
    return $TimerEntityTable(attachedDatabase, alias);
  }
}

class TimerEntityData extends DataClass implements Insertable<TimerEntityData> {
  final int id;
  final String title;
  final String description;
  final int totalTime;
  final int remainingTime;
  final bool isPaused;
  final bool isCompleted;
  final DateTime updatedTime;
  const TimerEntityData(
      {required this.id,
      required this.title,
      required this.description,
      required this.totalTime,
      required this.remainingTime,
      required this.isPaused,
      required this.isCompleted,
      required this.updatedTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['total_time'] = Variable<int>(totalTime);
    map['remaining_time'] = Variable<int>(remainingTime);
    map['is_paused'] = Variable<bool>(isPaused);
    map['is_completed'] = Variable<bool>(isCompleted);
    map['updated_time'] = Variable<DateTime>(updatedTime);
    return map;
  }

  TimerEntityCompanion toCompanion(bool nullToAbsent) {
    return TimerEntityCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      totalTime: Value(totalTime),
      remainingTime: Value(remainingTime),
      isPaused: Value(isPaused),
      isCompleted: Value(isCompleted),
      updatedTime: Value(updatedTime),
    );
  }

  factory TimerEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TimerEntityData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      totalTime: serializer.fromJson<int>(json['totalTime']),
      remainingTime: serializer.fromJson<int>(json['remainingTime']),
      isPaused: serializer.fromJson<bool>(json['isPaused']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      updatedTime: serializer.fromJson<DateTime>(json['updatedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'totalTime': serializer.toJson<int>(totalTime),
      'remainingTime': serializer.toJson<int>(remainingTime),
      'isPaused': serializer.toJson<bool>(isPaused),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'updatedTime': serializer.toJson<DateTime>(updatedTime),
    };
  }

  TimerEntityData copyWith(
          {int? id,
          String? title,
          String? description,
          int? totalTime,
          int? remainingTime,
          bool? isPaused,
          bool? isCompleted,
          DateTime? updatedTime}) =>
      TimerEntityData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        totalTime: totalTime ?? this.totalTime,
        remainingTime: remainingTime ?? this.remainingTime,
        isPaused: isPaused ?? this.isPaused,
        isCompleted: isCompleted ?? this.isCompleted,
        updatedTime: updatedTime ?? this.updatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('TimerEntityData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('totalTime: $totalTime, ')
          ..write('remainingTime: $remainingTime, ')
          ..write('isPaused: $isPaused, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('updatedTime: $updatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, totalTime,
      remainingTime, isPaused, isCompleted, updatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TimerEntityData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.totalTime == this.totalTime &&
          other.remainingTime == this.remainingTime &&
          other.isPaused == this.isPaused &&
          other.isCompleted == this.isCompleted &&
          other.updatedTime == this.updatedTime);
}

class TimerEntityCompanion extends UpdateCompanion<TimerEntityData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<int> totalTime;
  final Value<int> remainingTime;
  final Value<bool> isPaused;
  final Value<bool> isCompleted;
  final Value<DateTime> updatedTime;
  const TimerEntityCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.totalTime = const Value.absent(),
    this.remainingTime = const Value.absent(),
    this.isPaused = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.updatedTime = const Value.absent(),
  });
  TimerEntityCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required int totalTime,
    required int remainingTime,
    required bool isPaused,
    required bool isCompleted,
    required DateTime updatedTime,
  })  : title = Value(title),
        description = Value(description),
        totalTime = Value(totalTime),
        remainingTime = Value(remainingTime),
        isPaused = Value(isPaused),
        isCompleted = Value(isCompleted),
        updatedTime = Value(updatedTime);
  static Insertable<TimerEntityData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<int>? totalTime,
    Expression<int>? remainingTime,
    Expression<bool>? isPaused,
    Expression<bool>? isCompleted,
    Expression<DateTime>? updatedTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (totalTime != null) 'total_time': totalTime,
      if (remainingTime != null) 'remaining_time': remainingTime,
      if (isPaused != null) 'is_paused': isPaused,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (updatedTime != null) 'updated_time': updatedTime,
    });
  }

  TimerEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<int>? totalTime,
      Value<int>? remainingTime,
      Value<bool>? isPaused,
      Value<bool>? isCompleted,
      Value<DateTime>? updatedTime}) {
    return TimerEntityCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      totalTime: totalTime ?? this.totalTime,
      remainingTime: remainingTime ?? this.remainingTime,
      isPaused: isPaused ?? this.isPaused,
      isCompleted: isCompleted ?? this.isCompleted,
      updatedTime: updatedTime ?? this.updatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (totalTime.present) {
      map['total_time'] = Variable<int>(totalTime.value);
    }
    if (remainingTime.present) {
      map['remaining_time'] = Variable<int>(remainingTime.value);
    }
    if (isPaused.present) {
      map['is_paused'] = Variable<bool>(isPaused.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<DateTime>(updatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimerEntityCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('totalTime: $totalTime, ')
          ..write('remainingTime: $remainingTime, ')
          ..write('isPaused: $isPaused, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('updatedTime: $updatedTime')
          ..write(')'))
        .toString();
  }
}

abstract class _$PTDatabase extends GeneratedDatabase {
  _$PTDatabase(QueryExecutor e) : super(e);
  late final $TimerEntityTable timerEntity = $TimerEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [timerEntity];
}

mixin _$PTDataSourceMixin on DatabaseAccessor<PTDatabase> {
  $TimerEntityTable get timerEntity => attachedDatabase.timerEntity;
}
