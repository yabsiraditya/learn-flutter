import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Stack(children: <Widget>[
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "App With Custom Height",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
