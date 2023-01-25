import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_todo/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class DeleteBottomView extends StatelessWidget {
  const DeleteBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: ((context, value, child) {
      return Container(
        height: 135,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
              onPressed: (() {
                value.deleteAllTasks();
                Navigator.of(context).pop();
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: value.clr3,
                foregroundColor: value.clr1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: value.clr4, width: 2)),
              ),
              child: const Text('Delete All')),
          ElevatedButton(
              onPressed: (() {
                value.deleteCompletedTasks();
                Navigator.of(context).pop();
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: value.clr3,
                foregroundColor: value.clr1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: value.clr4, width: 2)),
              ),
              child: const Text('Delete Completed')),
        ]),
      );
    }));
  }
}
