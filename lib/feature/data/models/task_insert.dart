import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_insert.g.dart';

@JsonSerializable()
class TaskManipulation {
  String title;
  DateTime deadline;
  String priority;
  bool done;
  int projectId;

  TaskManipulation(
    {
      required this.title,
      required this.deadline,
      required this.priority,
      required this.done,
      required this.projectId
    }
  );

  Map<String, dynamic> toJson() => _$TaskManipulationToJson(this);
}