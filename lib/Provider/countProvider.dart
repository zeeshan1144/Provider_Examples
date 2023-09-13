import 'package:flutter/material.dart';

class Countprovider with ChangeNotifier {
  int _count = 0;
  int get counts => _count;

  void setCounts() {
    _count++;
    notifyListeners();
  }
}
