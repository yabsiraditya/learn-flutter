import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flexible Layout"),
            backgroundColor: Colors.lime,
          ),
          body: Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 5, 5),
                          color: Colors.yellow,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                          color: Colors.purple,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 15, 5),
                          color: Colors.green,
                        )),
                  ],
                ),
              ),
              Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    color: Colors.red,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
                    color: Colors.blue,
                  )),
            ],
          )),
    );
  }
}
