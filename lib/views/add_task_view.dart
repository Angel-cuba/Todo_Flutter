import 'package:flutter/material.dart';
import 'package:flutter_todo/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: ((context, value, child) {
      return SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: value.clr3,
              foregroundColor: value.clr1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: value.clr4, width: 1)),
            ),
            onPressed: () {
              value.buttonShow(
                  Container(
                    height: 100,
                    color: Colors.amberAccent,
                  ),
                  context);
            }, //
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ));
    }));
  }
}
