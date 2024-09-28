import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class Newqr extends StatefulWidget {
  @override
  State<Newqr> createState() => _NewqrState();
}

class _NewqrState extends State<Newqr> {
  String _scanBarcode = 'Hasil Scan QR';
 

  @override
  void initState() {
    super.initState();
  }

    Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

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
            Text(_scanBarcode, textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => scanQR(),
              child: Text("Scan"),
            )
          ],
        ),
      ),
    );
  }
}
