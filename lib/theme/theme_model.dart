import 'package:flutter/material.dart';
import './theme_preference.dart';

class ThemeModel extends ChangeNotifier{
  late bool _isDark;
  late ThemePreference _preference;
  bool get isDark => _isDark;

  ThemeModel(){
    _isDark=false;
    _preference=ThemePreference();
    getPreferences();
  }

  set isDark(bool value){
    _isDark=value;
    _preference.setTheme(value);
    notifyListeners();
  }


  getPreferences() async{
    _isDark = await _preference.getTheme();
    notifyListeners();
  }
}