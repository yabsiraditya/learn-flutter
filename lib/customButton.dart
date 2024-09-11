import 'package:flutter/material.dart';
import 'package:learn_flutter/colorFullButton.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colorfull Button"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorFullButton(Colors.pink, Colors.blue, Icons.adb),
            ColorFullButton(Colors.green, Colors.lime, Icons.message),
            ColorFullButton(Colors.grey, Colors.black, Icons.android),
            ColorFullButton(Colors.red, Colors.yellow, Icons.heart_broken),
          ],
        ),
      ),
    );
  }
}
