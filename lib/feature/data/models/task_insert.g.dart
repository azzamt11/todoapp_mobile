// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_insert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskManipulation _$TaskManipulationFromJson(Map<String, dynamic> json) =>
    TaskManipulation(
      title: json['title'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
      priority: json['priority'] as String,
      done: json['done'] as bool,
      projectId: (json['projectId'] as num).toInt(),
    );

Map<String, dynamic> _$TaskManipulationToJson(TaskManipulation instance) =>
    <String, dynamic>{
      'title': instance.title,
      'deadline': instance.deadline.toIso8601String(),
      'priority': instance.priority,
      'done': instance.done,
      'projectId': instance.projectId,
    };
