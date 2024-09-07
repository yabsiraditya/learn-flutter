import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImageView(
          data: 'https://www.instagram.com/yabsir.y/',
          version: 6,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(20),
          size: 300,
        ),
      ),
    );
  }
}
