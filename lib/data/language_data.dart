import 'package:flutter/material.dart';

class LanguageData extends ChangeNotifier {
  Locale currentLocale = const Locale('en');

  void changeLocale(String locale) {
    currentLocale = Locale(locale);
    notifyListeners();
  }
}
