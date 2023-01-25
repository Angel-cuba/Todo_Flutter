import 'package:flutter/material.dart';
import 'package:flutter_todo/views/add_task_view.dart';

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
                Expanded(flex: 1, child: Container(color: Colors.green)),
                //Task List view
                Expanded(flex: 7, child: Container(color: Colors.blue)),
              ],
            )),
        floatingActionButton: const AddTaskView());
  }
}
