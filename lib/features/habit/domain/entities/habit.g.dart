// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      recurrenceType:
          $enumDecode(_$RecurrenceTypeEnumMap, json['recurrenceType']),
      interval: (json['interval'] as num?)?.toInt(),
      daysOfWeek: (json['daysOfWeek'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'recurrenceType': _$RecurrenceTypeEnumMap[instance.recurrenceType]!,
      'interval': instance.interval,
      'daysOfWeek': instance.daysOfWeek,
      'creationDate': instance.creationDate.toIso8601String(),
    };

const _$RecurrenceTypeEnumMap = {
  RecurrenceType.daily: 'daily',
  RecurrenceType.weekly: 'weekly',
  RecurrenceType.everyXDays: 'everyXDays',
};
