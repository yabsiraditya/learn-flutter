import 'package:flutter/material.dart';
import 'package:learn_flutter/customProgresBar.dart';
import 'package:provider/provider.dart';
import 'dart:async';

class ProgresBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Custom Progres Bar"),
      ),
      body: Center(
        child: ChangeNotifierProvider<TimeState>(
          create: (BuildContext context) => TimeState(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Consumer<TimeState>(
                builder: (context, timeState, _) => CustomProgresBar(
                  width: 200,
                  value: timeState.time,
                  totalValue: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Consumer<TimeState>(
                builder: (context, timeState, _) => ElevatedButton(
                  onPressed: () {
                    Timer.periodic(Duration(seconds: 1), (timer) {
                      if (timeState.time == 0) timer.cancel();
                      timeState.time -= 1;
                    });
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TimeState with ChangeNotifier {
  int _time = 15;

  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
