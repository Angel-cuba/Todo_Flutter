import 'package:flutter/cupertino.dart';
import 'package:flutter_todo/models/task_model.dart';

import '../models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> task = <Task>[];
  User user = User('John Doe');
}
