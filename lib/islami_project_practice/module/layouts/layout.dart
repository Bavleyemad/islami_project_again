import 'package:flutter/material.dart';
import 'package:islami_project_again/core/widgets/Bg.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/Radio_screen.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/Sebha_screen.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/hadeth_screen.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/quran_screen.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/settings_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LayoutScreen extends StatefulWidget {
  static const String routname="layoutscreen";
   LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> screen=[
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen()
  ];


  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    List<String> title = [
      AppLocalizations.of(context)!.islami,
      AppLocalizations.of(context)!.hadeth,
      AppLocalizations.of(context)!.sebha,
      AppLocalizations.of(context)!.radio,
      AppLocalizations.of(context)!.settings,
    ];
    return Bg(child:
    Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(title[selectedindex],
          style: Theme.of(context).textTheme.titleMedium,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedindex=value;
          setState(() {

          });
        },
          currentIndex: selectedindex,

          items: [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label: AppLocalizations.of(context)!.quranTap),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label:  AppLocalizations.of(context)!.hadethTap),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label:  AppLocalizations.of(context)!.tasbehTap),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),label:  AppLocalizations.of(context)!.radioTap),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: AppLocalizations.of(context)!.settings )
      ]),
      body: screen[selectedindex],
    ));
  }
}
