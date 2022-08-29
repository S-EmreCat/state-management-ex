import 'package:flutter/material.dart';

class CounterNotifier with ChangeNotifier {
  int counter = 0;

  void add() {
    counter += 1;
    notifyListeners();
  }

  void remove() {
    counter -= 1;
    notifyListeners();
  }
}
