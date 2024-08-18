import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_project_again/core/theme/app_theme.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/hadeth_details.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/hadeth_screen.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/layout.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/sura_details.dart';
import 'package:islami_project_again/islami_project_practice/module/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(ChangeNotifierProvider(

      create: (BuildContext context) =>SettingsProvider(),
      child: MyApp()));

}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
var settingsProvider=Provider.of<SettingsProvider>(context);

    return MaterialApp(
      theme:AppTheme.lightTheme,
      localizationsDelegates:AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
     locale: Locale(settingsProvider.selectedLocale),
     darkTheme:AppTheme.darkTheme,
     themeMode: settingsProvider.selectedTheme,
     routes: {
       SplashScreen.routname:(context)=>SplashScreen(),
       LayoutScreen.routname:(context)=>LayoutScreen(),
       SuraDetails.routname:(context)=>SuraDetails(),
       HadethDetails.routname:(context)=>HadethDetails(),
     },
initialRoute: SplashScreen.routname,
      debugShowCheckedModeBanner: false,
    );

  }
}