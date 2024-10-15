import 'dart:async';

import 'package:flutter/material.dart';

class LatTimer extends StatefulWidget {
  @override
  State<LatTimer> createState() => _LatTimerState();
}

class _LatTimerState extends State<LatTimer> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Timer Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counter.toString(),
              style: TextStyle(
                color: (isBlack) ? Colors.black : Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Timer(Duration(seconds: 5), () {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text(
                "Ubah Warna 5 Detik Kemudian",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Timer.run(() {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text(
                "Ubah Warna Secara Langsung",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                counter = 0;
                isStop = false;
                Timer.periodic(Duration(seconds: 1), (timer) {
                  if (isStop) timer.cancel();
                  setState(() {
                    counter++;
                  });
                });
              },
              child: Text(
                "Start Timer",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                isStop = true;
              },
              child: Text(
                "Stop Timer",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
