
import 'package:flutter/material.dart';

class LanguageData extends ChangeNotifier {
  Locale currentLocale = Locale('pl');

  void changeLocale(String locale) {
    currentLocale = Locale(locale);
    notifyListeners();
  }
}
