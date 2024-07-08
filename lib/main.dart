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
          title: Text("Anonymouse Method"),
          backgroundColor: Colors.lime,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "Tombol sudah ditekan";
                    });
                  },
                  child: Text("Tekan Saya"))
            ],
          ),
        ),
      ),
    );
  }
}
