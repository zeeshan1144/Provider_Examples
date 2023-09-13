import 'package:flutter/material.dart';

class Example_one_Provider with ChangeNotifier {
  double _sliderValue = 1.0;
  double get sliderValue => _sliderValue;

  void setValue(double sliderdata) {
    _sliderValue = sliderdata;
    notifyListeners();
  }
}
