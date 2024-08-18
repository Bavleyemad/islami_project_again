import 'package:flutter/material.dart';
import 'package:islami_project_again/core/widgets/Bg.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Scaffold(

      body:

      Column(

        children: [
          Divider(height: 120,),
          Image.asset("assets/images/radio_image.png"),
          Text(AppLocalizations.of(context)!.radio),
          Divider(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.rotate_left,color: Theme.of(context).colorScheme.secondary,size: 50, ),
              Icon(Icons.play_arrow,color: Theme.of(context).colorScheme.secondary,size: 50,),
              Icon(Icons.rotate_right,color: Theme.of(context).colorScheme.secondary,size: 50, ),
              
            ],
          )
        ],
      ),

    );

  }
}
