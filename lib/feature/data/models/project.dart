import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  
  int id;
  String title;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;
  DateTime archived;
  
  Project({
    required this.id, 
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.archived
  });

  static const fromJson = _$ProjectFromJson;
}