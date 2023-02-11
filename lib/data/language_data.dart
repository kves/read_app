import 'package:flutter/material.dart';

class LanguageData extends ChangeNotifier {
  Locale currentLocale = const Locale('pl');

  void changeLocale(String locale) {
    currentLocale = Locale(locale);
    notifyListeners();
  }
}
