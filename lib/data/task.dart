import 'package:flutter_note_app/data/task_type.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task.g.dart';

@HiveType(typeId: 1)
class Task extends HiveObject {
  Task(
      {required this.title,
      required this.subTitle,
      this.isDonNew = false,
      required this.time,
      required this.taskType});

  @HiveField(0)
  String title;

  @HiveField(1)
  String subTitle;

  @HiveField(2)
  bool isDonNew;

  @HiveField(3)
  DateTime? time;

  @HiveField(4)
  TaskType taskType;
}
