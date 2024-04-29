// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: DateTime.parse(json['deletedAt'] as String),
      archived: DateTime.parse(json['archived'] as String),
      deadline: DateTime.parse(json['deadline'] as String),
      done: json['done'] as bool,
      priority: json['priority'] as String,
      projectId: (json['projectId'] as num).toInt(),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt.toIso8601String(),
      'archived': instance.archived.toIso8601String(),
      'deadline': instance.deadline.toIso8601String(),
      'priority': instance.priority,
      'done': instance.done,
      'projectId': instance.projectId,
    };
