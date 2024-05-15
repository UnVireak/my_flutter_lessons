import 'package:cc/cache_module/helpers/language_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheThemeLogic extends ChangeNotifier {
  int _modeIndex = 1;
  int get modeIndex => _modeIndex;

  // final key = "CacheThemeLogic";
  // late SharedPreferences _pref;

  final _secure = FlutterSecureStorage();
  final _key = "CacheThemeLogic_FlutterSecureStorage";

  Future initCache() async {
    // _pref = await SharedPreferences.getInstance();
    // _modeIndex = _pref.getInt(key) ?? 1;
    // notifyListeners();

    String index = await _secure.read(key: _key) ?? "1";
    _modeIndex = int.parse(index);

    String langStr = await _secure.read(key: _langKey) ?? "0";
    _lang = int.parse(langStr);
    _cacheLang = cacheLageuageList[_lang];

    notifyListeners();
  }

  void changeToLight() {
    // _modeIndex = 1;
    // _pref.setInt(key, _modeIndex);
    // notifyListeners();

    _modeIndex = 1;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToDark() {
    // _modeIndex = 2;
    // _pref.setInt(key, _modeIndex);
    // notifyListeners();

    _modeIndex = 2;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToSystem() {
    // _modeIndex = 3;
    // _pref.setInt(key, _modeIndex);
    // notifyListeners();

    _modeIndex = 3;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  int _lang = 0;
  CacheLanguage _cacheLang = cacheLageuageList[0];
  CacheLanguage get cacheLang => _cacheLang;

  // int get lang => _lang;
  final _langKey = "Language_CacheThemeLogic_FutureSecureStorage";

  void changeToEnglish() {
    _lang = 0;
    _secure.write(key: _langKey, value: _lang.toString());
    _cacheLang = cacheLageuageList[_lang];
    notifyListeners();
  }

  void changeToKhmer() {
    _lang = 1;
    _secure.write(key: _langKey, value: _lang.toString());
    _cacheLang = cacheLageuageList[_lang];
    notifyListeners();
  }
   void changeToChinese() {
    _lang = 2;
    _secure.write(key: _langKey, value: _lang.toString());
    _cacheLang = cacheLageuageList[_lang];
    notifyListeners();
  }

    void changeToThai() {
    _lang = 3;
    _secure.write(key: _langKey, value: _lang.toString());
    _cacheLang = cacheLageuageList[_lang];
    notifyListeners();
  }

     void changeToJapan() {
    _lang = 4;
    _secure.write(key: _langKey, value: _lang.toString());
    _cacheLang = cacheLageuageList[_lang];
    notifyListeners();
  }
      void changeToFrench() {
    _lang = 5;
    _secure.write(key: _langKey, value: _lang.toString());
    _cacheLang = cacheLageuageList[_lang];
    notifyListeners();
  }
}
