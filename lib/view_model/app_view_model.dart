import 'package:flutter/material.dart';

import '../models/task_model.dart';
import '../models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> task = <Task>[];
  User user = User('John Doe');

  Color clr1 = Colors.blue.shade50;
  Color clr2 = Colors.blueAccent.shade200;
  Color clr3 = Colors.blueGrey.shade800;
  Color clr4 = Colors.lightBlue.shade900;

  int get numTask => task.length;

  int get remaningTask => task.where((element) => !element.isDone).length;

  int get taskDone => task.where((element) => element.isDone).length;

  String get userName => user.username;

  void addSingleTask(Task newTask) {
    task.add(newTask);
    notifyListeners();
  }

  void removeTask(int taskIndex) {
    task.removeAt(taskIndex);
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

  void updateUserName(String name) {
    user.username = name;
    notifyListeners();
  }

  void deleteAllTasks() {
    task.clear();
    notifyListeners();
  }

  void deleteCompletedTasks() {
    task.removeWhere((element) => element.isDone);
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
