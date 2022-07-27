import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';

class TaskList extends StatelessWidget {
  TaskList({required this.listOfTasks});

  List listOfTasks;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
            onLongPress: () {
              context.read<MyData>().removeTask(index);
            },
            child: listOfTasks[index]);
      },
      itemCount: listOfTasks.length,
    );
  }
}
