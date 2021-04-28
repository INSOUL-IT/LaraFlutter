part of test_provider;

class CounterState extends ChangeNotifier {
  int _count = 5;
  int get count => _count;

  void setCount(int value) {
    _count = value;
    notifyListeners();
  }

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
