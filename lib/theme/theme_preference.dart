import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference{
  //preference key
  static const PREF_KEY="pref_key";

  //set the theme
  setTheme(bool value ) async{
    SharedPreferences sP = await SharedPreferences.getInstance();
    sP.setBool(PREF_KEY, value);
  }

  //get theme
  getTheme() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getBool(PREF_KEY)??false;
  }
}