import 'package:flutter/material.dart';

class CounterLogic extends ChangeNotifier{
  int _count = 0;
  int get count => _count; //receive value only but cannot change

  void increase(){
    _count++;
    notifyListeners();
  }

  void decrease(){
    _count--;
    notifyListeners();
  }

}