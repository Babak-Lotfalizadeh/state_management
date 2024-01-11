import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increase() {
    _value++;
    notifyListeners();
  }

  void decrease() {
    _value--;
    notifyListeners();
  }
}
