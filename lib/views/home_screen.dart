import 'package:flutter/material.dart';

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
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
