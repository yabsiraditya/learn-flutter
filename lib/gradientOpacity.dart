import 'package:flutter/material.dart';

class GradientOpacity extends StatelessWidget {
  const GradientOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradiet Opacity"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(
                    Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image(
            width: 300,
            image: AssetImage("images/1.jpeg"),
          ),
        ),
      ),
    );
  }
}
