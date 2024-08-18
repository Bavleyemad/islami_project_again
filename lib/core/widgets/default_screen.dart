import 'package:flutter/material.dart';
import 'package:islami_project_again/core/theme/app_theme.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';
class DefaultScreen extends StatelessWidget {
  Widget body;
   DefaultScreen({required this.body,super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Stack(
      children: [
      Container(
      height: double.infinity,
      width: double.infinity,
      decoration:
      BoxDecoration(image: DecorationImage(
          image: AssetImage(settingsProvider.isDarkEnabled()?"assets/images/dark_bg.png"
              :"assets/images/default_bg.png"),fit: BoxFit.cover)),
      ),
        body

      ],
    ) ;
  }
}
