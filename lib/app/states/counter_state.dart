import 'package:flutter/material.dart';

class CounterState extends ChangeNotifier{

  int _counter = 0;

  void addOne() {
    _counter ++;
    notifyListeners();
  }

  void subtractOne() {
    _counter --;
    notifyListeners();
  }

  int getCounter(){
    return _counter;
  }
}