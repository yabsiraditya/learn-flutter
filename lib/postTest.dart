import 'package:flutter/material.dart';

class MethodPost extends StatefulWidget {
  @override
  State<MethodPost> createState() => _MethodPostState();
}

class _MethodPostState extends State<MethodPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Method"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Hasil Kembalian"),
            ElevatedButton(onPressed: () {}, child: Text("Post")),
          ],
        ),
      ),
    );
  }
}
