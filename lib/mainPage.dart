import 'package:flutter/material.dart';
import 'package:learn_flutter/secondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Secondpage();
          }));
        },
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
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
