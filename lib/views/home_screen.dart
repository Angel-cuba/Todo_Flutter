import 'package:flutter/material.dart';
import 'package:flutter_todo/views/add_task_view.dart';
import 'package:flutter_todo/views/header_view.dart';
import 'package:flutter_todo/views/task_info_view.dart';
import 'package:flutter_todo/views/task_list_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: Column(
              children: const [
                //Header view
                Expanded(flex: 1, child: HeaderView()),
                SizedBox(height: 8),
                //Task Info view
                Expanded(flex: 1, child: TaskInfoView()),
                SizedBox(height: 8),
                //Task List view
                Expanded(flex: 7, child: TaskListView()),
              ],
            )),
        floatingActionButton: const AddTaskView());
  }
}
