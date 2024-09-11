import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Newqr extends StatefulWidget {
  @override
  State<Newqr> createState() => _NewqrState();
}

class _NewqrState extends State<Newqr> {
  String text = "Hasil QR Scan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scan"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                text = await scanner.scan() as String;
                setState(() {});
              },
              child: Text("Scan"),
            )
          ],
        ),
      ),
    );
  }
}
