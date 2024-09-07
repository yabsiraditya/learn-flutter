import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:learn_flutter/QrGenerator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QrGenerator(),
    );
  }
}
