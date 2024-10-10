import 'package:flutter/material.dart';

class AnimasiPad extends StatefulWidget {
  const AnimasiPad({super.key});

  @override
  State<AnimasiPad> createState() => _AnimasiPadState();
}

class _AnimasiPadState extends State<AnimasiPad> {
  double myPad = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Padding"),
        backgroundColor: Colors.lime,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPad),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPad = 20;
                        });
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPad),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPad = 10;
                        });
                      },
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPad),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPad = 30;
                        });
                      },
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPad),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPad = 5;
                        });
                      },
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
