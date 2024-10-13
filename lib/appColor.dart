import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AplicationColor with ChangeNotifier {
  bool _isLime = true;

  bool get isLime => _isLime;
  set isLime(bool value) {
    _isLime = value;
    notifyListeners();
  }

  Color get color => (_isLime) ? Colors.lime : Colors.amber;
}
