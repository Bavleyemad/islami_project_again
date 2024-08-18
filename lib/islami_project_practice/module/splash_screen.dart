import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/layout.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routname="Splashscreen";
   SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, LayoutScreen.routname, (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return
    settingsProvider.isDarkEnabled()?
    Image.asset("assets/images/dark_bg.png")
        :Image.asset("assets/images/default_bg.png");
  }
}
