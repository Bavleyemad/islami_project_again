import 'package:flutter/material.dart';
import 'package:islami_project_again/core/theme/app_theme.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';

class Bg extends StatelessWidget {
  Widget child;
   Bg({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration:
      BoxDecoration(image: DecorationImage(
          image: AssetImage(settingsProvider.isDarkEnabled()?"assets/images/dark_bg.png"
              : "assets/images/default_bg.png"),fit: BoxFit.cover)),
      child:child
    );
  }
}
