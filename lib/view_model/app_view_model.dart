import 'package:flutter/material.dart';

import '../models/task_model.dart';
import '../models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> task = <Task>[];
  User user = User('John Doe');

  Color clr1 = Colors.grey.shade50;
  Color clr2 = Colors.grey.shade200;
  Color clr3 = Colors.grey.shade800;
  Color clr4 = Colors.grey.shade900;

  int get numTask => task.length;

  void addSingleTask(Task newTask) {
    task.add(newTask);
    notifyListeners();
  }

  bool getTaskValue(int taskIndex) {
    return task[taskIndex].isDone;
  }

  String getTaskTitle(int taskIndex) {
    return task[taskIndex].title;
  }

  void setTaskValue(int taskIndex, bool taskValue) {
    task[taskIndex].isDone = taskValue;
    notifyListeners();
  }

  void buttonShow(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (context) {
          return bottomSheetView;
        });
  }
}
