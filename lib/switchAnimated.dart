import 'package:flutter/material.dart';

class SwitchAnimated extends StatefulWidget {
  const SwitchAnimated({super.key});

  @override
  State<SwitchAnimated> createState() => _SwitchAnimatedState();
}

class _SwitchAnimatedState extends State<SwitchAnimated> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Animated"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedSwitcher(
              child: myWidget,
              duration: Duration(seconds: 1),
            ),
            Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.red[200],
              value: isON,
              onChanged: (newValue) {
                isON = newValue;
                setState(() {
                  if (isON)
                    // myWidget = SizedBox(
                    //   width: 200,
                    //   height: 100,
                    //   child: Center(
                    //     child: Text(
                    //       "Switch: On",
                    //       style: TextStyle(
                    //         color: Colors.green,
                    //         fontWeight: FontWeight.w700,
                    //         fontSize: 30,
                    //       ),
                    //     ),
                    //   ),
                    // );
                    myWidget = Container(
                      key: ValueKey(1),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black, width: 3)),
                    );
                  else
                    myWidget = Container(
                      key: ValueKey(2),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black, width: 3)),
                    );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
