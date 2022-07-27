// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  // AddTaskScreen({required this.myCallBack});

  // final Function myCallBack;
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          child: Column(children: [
            Text(
              'Add Task',
              style: TextStyle(fontSize: 30, color: Colors.lightBlue),
            ),
            TextField(
              controller: myController,
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 5),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 5),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue),
                ),
                onPressed: () {
                  context.read<MyData>().addData(myController.text);
                  Navigator.pop(context);
                  // setState(() {
                  //   widget.myCallBack(myController.text);
                  // });
                },
                child: Text(
                  'ADD',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ])),
    );
  }
}
