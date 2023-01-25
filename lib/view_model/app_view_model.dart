import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_model.dart';

import '../models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> task = <Task>[];
  User user = User('John Doe');

  Color clr1 = Colors.grey.shade50;
  Color clr2 = Colors.grey.shade200;
  Color clr3 = Colors.grey.shade800;
  Color clr4 = Colors.grey.shade900;
}
