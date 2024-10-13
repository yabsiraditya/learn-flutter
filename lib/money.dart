import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Money with ChangeNotifier {
  int _balance = 10200;

  int get balance => _balance;
  set balance(int value) {
    _balance = value;
    notifyListeners();
  }
}
