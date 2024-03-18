import 'package:flutter/material.dart';
import 'package:cc/state_module/language_const.dart';

class LanguageLogic extends ChangeNotifier{
  Language _lang = Language();
  Language get lang => _lang;

  void changeToKhmer(){
    _lang = Khmer();
    notifyListeners();
  }

  void changeToEnglish(){
    _lang = Language();
    notifyListeners();
  }

    void changeToChinese(){
    _lang = China();
    notifyListeners();
  }
}
