import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project_insert.g.dart';

@JsonSerializable()
class ProjectManipulation {
  String title;

  ProjectManipulation(
    {
      required this.title,
    }
  );

  Map<String, dynamic> toJson() => _$ProjectManipulationToJson(this);
}