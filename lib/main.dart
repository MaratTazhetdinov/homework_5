import 'package:flutter/material.dart';
import 'package:homework_5/task_1.dart';
import 'package:homework_5/task_2.dart';
import 'package:homework_5/task_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TaskPage1(),
      // home: const TaskPage2(),
      // home: const TaskPage3(),
    );
  }
}



