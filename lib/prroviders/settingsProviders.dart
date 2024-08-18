import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
String selectedLocale="en";
ThemeMode selectedTheme=ThemeMode.light;


void changeLanguage(String newLocale){
selectedLocale=newLocale;
notifyListeners();
}
void changeTheme(ThemeMode newTheme){
  selectedTheme=newTheme;
  notifyListeners();
}
bool isDarkEnabled(){
  return selectedTheme==ThemeMode.dark;

}
}