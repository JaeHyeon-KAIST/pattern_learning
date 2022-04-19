import 'package:flutter/material.dart';

class PatternPageProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  set setCount(int count) {
    _count = count;
    notifyListeners(); // setState와 같은 역할 : provider.of<T>(context) 한 곳에 setState
  }
}
