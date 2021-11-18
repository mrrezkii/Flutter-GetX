import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: GetBuilder<CounterController>(
        init: CounterController(),
        builder: (controller) {
          return Text(
            "Angka : ${controller.count}",
            style: TextStyle(fontSize: 35),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
      ),
    );
  }
}
