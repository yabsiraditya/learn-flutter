import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini Adalah Text";

  void tekanTombol() {
    setState(() {
      message = "Tombol Udah ditekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Style"),
          backgroundColor: Colors.lime,
        ),
        body: Center(
          child: Text(
            "Ini Adalah Text",
            style: TextStyle(
                fontFamily: "Poppins",
                fontStyle: FontStyle.italic,
                fontSize: 30,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationThickness: 2,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
