import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
          backgroundColor: Colors.lime,
        ),
        body: Center(
          child: Container(
              color: Colors.lime,
              width: 150,
              height: 150,
              child: Text(
                "Melatih Kemampuan Belajar Flutter Saya bersama Pak Erico.",
                style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )),
        ),
      ),
    );
  }
}
