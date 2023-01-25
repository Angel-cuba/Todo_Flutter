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
            child: ListView.separated(
                padding: const EdgeInsets.all(10),
                separatorBuilder: ((context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                }),
                itemCount: value.numTask,
                itemBuilder: ((context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) =>
                        direction == DismissDirection.endToStart
                            ? value.removeTask(index)
                            : value.setTaskValue(index, true),
                    background: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: value.clr1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          activeColor: value.clr3,
                          checkColor: value.clr1,
                          side: BorderSide(color: value.clr3, width: 1),
                          value: value.getTaskValue(index),
                          onChanged: (bool? taskValue) {
                            value.setTaskValue(index, taskValue!);
                          },
                        ),
                        title: Text(
                          value.getTaskTitle(index),
                          style: TextStyle(
                            fontSize: 20,
                            color: value.clr4,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                })));
      },
    );
  }
}
