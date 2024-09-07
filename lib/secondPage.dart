import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/e0/2d/d8/e02dd8f1c8fbf49997b5f8b949623cbf.jpg")),
            ),
          ),
        ),
      ),
    );
  }
}
