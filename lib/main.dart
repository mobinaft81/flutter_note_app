import 'package:flutter/material.dart';
import 'package:flutter_note_app/screens/home_screen.dart';
import 'package:flutter_note_app/data/task.dart';
import 'package:flutter_note_app/data/task_type.dart';
import 'package:flutter_note_app/data/type_enum.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('names');
  Hive.registerAdapter(TaskAdapter());
  await Hive.openBox<Task>('taskBox');
  Hive.registerAdapter(TaskTypeAdapter());
  Hive.registerAdapter(TaskTypeEnumAdapter());
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SM',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
