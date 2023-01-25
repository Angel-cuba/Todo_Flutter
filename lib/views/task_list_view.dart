import 'package:flutter/material.dart';
import 'package:flutter_todo/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, value, child) {
        return Container(
          decoration: BoxDecoration(
            color: value.clr2,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          // child: ListView.separated(
          //     itemBuilder: itemBuilder,
          //     separatorBuilder: separatorBuilder,
          //     itemCount: itemCount),
        );
      },
    );
  }
}
