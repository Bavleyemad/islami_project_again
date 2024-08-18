import 'package:flutter/material.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/language_Bottom_sheet.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/theme_buttom_sheet.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Padding(
      padding: EdgeInsets.only(top: 36,left: 12,right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.bodyMedium,),
          Divider(height: 12,),
          InkWell(
            onTap: (){
showThemeButtonSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).colorScheme.background,
              ),
              child: Text(settingsProvider.isDarkEnabled()?
                  AppLocalizations.of(context)!.dark:
              AppLocalizations.of(context)!.light
                ,style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary
              ), ),

            ),
          ),
          Divider(height: 12,),
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.bodyMedium,),
          Divider(height: 12,),
          InkWell(
            onTap: (){
              showlanguageButtonSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(18),

                color: Theme.of(context).colorScheme.background,
              ),
              child: Text(settingsProvider.selectedLocale=="en"?
                "English":"العرببية"

                ,style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary
              ), ),

            ),
          ),
        ],
      ),
    );
  }
  void showThemeButtonSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
return ThemeButtomSheet();
    },);
  }
  void showlanguageButtonSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
      return LanguageButtomSheet();
    },);
  }
}
