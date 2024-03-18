import 'package:flutter/material.dart';

class ThemeLogic extends ChangeNotifier{
  bool _dark = false;
  bool get dark => _dark;

  void toggleDark(){
    _dark = !_dark;
    notifyListeners();
  }
}