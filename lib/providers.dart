import 'package:flutter/material.dart';

class ProviderManager extends ChangeNotifier {
  int weight = 5;
  double height = 45;
  increment() {
    if (weight > 0) {
      weight--;
    }

    notifyListeners();
  }

  calculateHeight(val) {
    height = val;
    notifyListeners();
  }
}
