import 'package:flutter/material.dart';
import 'package:flutter_todo/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

import '../widgets/delete_bottom_view.dart';
import '../widgets/setting_bottom_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: ((context, value, child) {
      return Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text('Welcome back,',
                            style: TextStyle(
                                color: value.clr4,
                                fontSize: 23,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(value.userName,
                              style: TextStyle(
                                  color: value.clr4,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold))),
                    )
                  ],
                ),
              )),
          Expanded(
              child: InkWell(
                  onTap: () {
                    value.buttonShow(const DeleteBottomView(), context);
                  },
                  child: Icon(Icons.delete, color: value.clr4, size: 30))),
          Expanded(
              child: InkWell(
                  onTap: () {
                    value.buttonShow(const SettingBottomView(), context);
                  },
                  child: Icon(Icons.settings, color: value.clr3, size: 30))),
        ],
      );
    }));
  }
}
