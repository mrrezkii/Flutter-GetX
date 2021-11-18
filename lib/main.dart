import 'package:flutter/material.dart';
import 'package:flutter_getx/models/orang.dart';
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

  var orang = Orang(nama: "Rezki", umur: 21).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(
              "Nama saya ${orang.value.nama}",
              style: TextStyle(fontSize: 35),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          orang.update((_) {
            orang.value.nama = orang.value.nama.toString().toUpperCase();
          });
        },
      ),
    );
  }
}
