import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/row_task.dart';

class MyData extends ChangeNotifier {
  List<RowTasks> rowtasks = [];

  void addData(String taskName) {
    rowtasks.add(RowTasks(text: taskName));
    notifyListeners();
  }

  void removeTask(taskIndex) {
    rowtasks.removeAt(taskIndex);
    notifyListeners();
  }
}
