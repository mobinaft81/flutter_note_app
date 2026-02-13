import 'package:flutter/material.dart';

import '../data/task_type.dart';

class TaskTypeItemList extends StatelessWidget {
  TaskTypeItemList(
      {Key? key,
      required this.taskType,
      required this.index,
      required this.selectedItemList})
      : super(key: key);

  TaskType taskType;

  int index;
  int selectedItemList;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: (selectedItemList == index) ? Color(0xff18DAA3) : Colors.white,
          border: Border.all(
              color: (selectedItemList == index) ? Colors.black : Colors.grey,
              width: (selectedItemList == index) ? 2 : 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.all(5),
      width: 95,
      child: Column(
        children: [
          Image.asset(taskType.image),
          Text(
            taskType.title,
            style: TextStyle(
                fontWeight: (selectedItemList == index)
                    ? FontWeight.bold
                    : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
