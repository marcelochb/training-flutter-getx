import 'package:flutter/material.dart';

class ButtonController extends ChangeNotifier {
  var size = 0.0;
  var curve = Curves.easeInOut;
  var duration = Duration(milliseconds: 500);

  void setSize(double size) {
    this.size = size;
    notifyListeners();
  }

  ButtonController({double size}) {
    this.size = size;
  }
}
