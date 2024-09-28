import 'package:flutter/material.dart';
import 'dart:ui';

class FontFeatures extends StatelessWidget {
  const FontFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Typography"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Contoh 01 (Tanpa Apapun)",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Contoh 02 (Small Caps)",
              style: TextStyle(
                  fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
            ),
            Text(
              "Contoh 3 1/2 (Small Caps & Frac)",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac')
              ]),
            ),
            Text(
              "Milonga 3 1/2 (Small Caps & Frac)",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Milonga",
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac')
                  ]),
            ),
            Text(
              "Contoh 04 19 (Tanpa Apapun)",
              style: TextStyle(fontSize: 20, fontFamily: "Cardo"),
            ),
            Text(
              "Contoh 05 19 (Dengan Old Style)",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo",
                  fontFeatures: [FontFeature.oldstyleFigures()]),
            ),
            Text(
              "Contoh 06 (Tanpa Apapun)",
              style: TextStyle(fontSize: 30, fontFamily: "Gabriola"),
            ),
            Text(
              "Contoh 07 (Style Set Nomor 5)",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Gabriola",
                  fontFeatures: [FontFeature.stylisticSet(5)]),
            ),
          ],
        ),
      ),
    );
  }
}
