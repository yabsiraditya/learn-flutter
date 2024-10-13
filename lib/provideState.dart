import 'package:flutter/material.dart';
import 'package:learn_flutter/appColor.dart';
import 'package:provider/provider.dart';

class ProvideState extends StatelessWidget {
  const ProvideState({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AplicationColor>(
      create: (BuildContext context) => AplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<AplicationColor>(
            builder: (context, aplicationColor, _) => Text(
              "Provider State Management",
              style: TextStyle(color: aplicationColor.color),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<AplicationColor>(
                builder: (context, aplicationColor, _) => AnimatedContainer(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  color: aplicationColor.color,
                  duration: Duration(milliseconds: 500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text("AB"),
                  ),
                  Consumer<AplicationColor>(
                    builder: (context, aplicationColor, _) => Switch(
                      value: aplicationColor.isLime,
                      onChanged: (newValue) {
                        aplicationColor.isLime = newValue;
                      },
                    ),
                  ),
                  Container(margin: EdgeInsets.all(5), child: Text("LM")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
