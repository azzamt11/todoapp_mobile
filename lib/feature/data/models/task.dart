import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable()
class Task {
  
  int id;
  String title;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;
  DateTime archived;
  DateTime deadline;
  String priority;
  bool done;
  int projectId;
  
  Task({
    required this.id, 
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.archived,
    required this.deadline,
    required this.done,
    required this.priority,
    required this.projectId
  });

  static const fromJson = _$TaskFromJson;
}