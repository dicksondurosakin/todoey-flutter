import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class RowTasks extends StatefulWidget {
  RowTasks({
    required this.text,
  });

  late String text;
  bool completed = false;
  @override
  State<RowTasks> createState() => _RowTasksState();
}

class _RowTasksState extends State<RowTasks> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            widget.text,
            style:
                widget.completed ? kTaskLabelcompleted : kTaskLabelUncompleted,
          ),
        ),
        Checkbox(
            value: widget.completed,
            onChanged: (newValue) {
              setState(() {
                widget.completed = newValue!;
              });
            })
      ],
    );
  }
}
