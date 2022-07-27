// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/data.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
