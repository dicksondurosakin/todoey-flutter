// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'add_task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // List<RowTasks> rowtasks = [
  //   RowTasks(
  //     text: 'Buy Milk',
  //   ),
  //   RowTasks(
  //     text: 'Buy Egg',
  //   ),
  //   RowTasks(
  //     text: 'Buy Bread',
  //   ),
  // ];

  // void TaskScreenCallBack(newTask) {
  //   setState(() {
  //     rowtasks.add(RowTasks(text: newTask));
  //   });
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    ),
                  ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, right: 30.0, bottom: 30.0, left: 30.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                // '12 tasks',
                '${context.watch<MyData>().rowtasks.length} tasks',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ]),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: TaskList(
                  listOfTasks: context.watch<MyData>().rowtasks,
                )),
          )
        ],
      ),
    );
  }
}
