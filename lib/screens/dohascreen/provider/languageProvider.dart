import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String language='Hindi';
  bool isLight = true;
  void changeLanguage(language){
    this.language = language;
    notifyListeners();
  }
  void ChangeTheme(){
    if(isLight){
      isLight = false;
      notifyListeners();
    }
    else{
      isLight = true;
      notifyListeners();
    }
  }
}