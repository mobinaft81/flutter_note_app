import 'package:flutter_note_app/data/task_type.dart';
import 'package:flutter_note_app/data/type_enum.dart';

List<TaskType> getTaskTypeList() {
  var list = [
    TaskType(
        image: 'assets/images/meditate.png',
        title: 'تمرکز',
        taskTypeEnum: TaskTypeEnum.focous),
    TaskType(
        image: 'assets/images/social_frends.png',
        title: 'قرار دوستانه',
        taskTypeEnum: TaskTypeEnum.date),
    TaskType(
        image: 'assets/images/hard_working.png',
        title: 'کاری',
        taskTypeEnum: TaskTypeEnum.working)
  ];
  return list;
}
