import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_model.dart';
import 'package:flutter_todo/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class SettingBottomView extends StatelessWidget {
  const SettingBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();

    return Consumer<AppViewModel>(builder: (context, value, child) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            height: 90,
            child: Center(
              child: SizedBox(
                height: 40,
                width: 300,
                child: TextField(
                  onSubmitted: (textValue) {
                    if (textValue.isNotEmpty) {
                      value.updateUserName(textValue);
                      textController.clear();
                    }
                    Navigator.pop(context);
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 5),
                    filled: true,
                    fillColor: value.clr2,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  controller: textController,
                  autofocus: true,
                  autocorrect: false,
                  style: TextStyle(
                    fontSize: 20,
                    color: value.clr4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )),
      );
    });
  }
}
