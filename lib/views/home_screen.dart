import 'package:flutter/material.dart';
import 'package:flutter_todo/views/add_task_view.dart';
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
              children: [
                //Header view
                Expanded(flex: 1, child: Container(color: Colors.red)),
                //Task Info view
                const Expanded(flex: 1, child: TaskInfoView()),
                //Task List view
                const Expanded(flex: 7, child: TaskListView()),
              ],
            )),
        floatingActionButton: const AddTaskView());
  }
}
