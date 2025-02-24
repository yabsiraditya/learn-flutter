import 'package:flutter/material.dart';
import 'dart:math' as math;

class ClipPaths extends StatelessWidget {
  const ClipPaths({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Path"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Image(
            width: 300,
            image: AssetImage('images/1.jpeg'),
          ),
        ),
      ),
    );
  }
}

const STAR_POINTS = 5;

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var centerX = size.width / 2;
    var centerY = size.height / 2;

    var path = Path();

    var radius = size.width / 2;
    var inner = radius / 2;
    var rotation = math.pi / 2 * 3;
    var step = math.pi / STAR_POINTS;

    path.lineTo(centerX, centerY - radius);

    for (var i = 0; i < STAR_POINTS; i++) {
      var x = centerX + math.cos(rotation) * radius;
      var y = centerY + math.sin(rotation) * radius;
      path.lineTo(x, y);
      rotation += step;

      x = centerX + math.cos(rotation) * inner;
      y = centerY + math.sin(rotation) * inner;
      path.lineTo(x, y);
      rotation += step;
    }

    path.lineTo(centerX, centerY - radius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
