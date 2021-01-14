import 'package:flutter/material.dart';

class CounterState extends ChangeNotifier{

  int _counter = 0;

  int get counter => _counter;

  void addOne() {
    _counter ++;
    notifyListeners();
  }

  void subtractOne() {
    _counter --;
    notifyListeners();
  }

}