import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingprovider extends ChangeNotifier{
  String language='en';
  ThemeMode themeMode=ThemeMode.light;
  void changelanguage(String lang){
     language= lang;
    notifyListeners();

  }
   changeTheme(ThemeMode Theme){
    themeMode= Theme;
    notifyListeners();

  }
}