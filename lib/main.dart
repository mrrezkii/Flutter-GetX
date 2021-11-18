import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          home: HomePage(),
          theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        ));
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final c = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            'Angka ${c.counter}',
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.increment();
          c.changeTheme();
        },
      ),
    );
  }
}
