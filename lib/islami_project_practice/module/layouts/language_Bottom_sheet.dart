import 'package:flutter/material.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';

class LanguageButtomSheet extends StatefulWidget {
  LanguageButtomSheet({super.key});

  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: (){
                settingsProvider.changeLanguage("en");
              },
              child:
              settingsProvider.selectedLocale=="en"?
              getSelectedItem(context, "English")
          :getUnselectedItem(context, "English")
          ),
          Divider(height: 24,),
          InkWell(
              onTap: (){
                settingsProvider.changeLanguage("ar");
              },
              child:
    settingsProvider.selectedLocale=="ar"?
              getSelectedItem(context, "العربية"):
          getUnselectedItem(context, "العربية"))
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context,String text ){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.primary,),),
        Icon(Icons.check,color: Theme.of(context).colorScheme.primary,)
      ],
    );
  }

  Widget getUnselectedItem(BuildContext context,String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.secondary,),
        )
      ],
    );
  }
}
