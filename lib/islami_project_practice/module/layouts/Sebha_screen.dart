import 'package:flutter/material.dart';
import 'package:islami_project_again/prroviders/settingsProviders.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaScreen extends StatefulWidget {
   SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
int count=0;
void _incrementCounter() {
  setState(() {
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below
    // so that the display can reflect the updated values. If we changed
    // _counter without calling setState(), then the build method would not be
    // called again, and so nothing would appear to happen.
    count++;
  });
}
double terns=0.0;


  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Scaffold(
      body:
      Column(
        children: [
          SizedBox(height: 20,),
          
          AnimatedRotation(
            duration: Duration(milliseconds: 20),
            turns: terns,
            child: Image.asset(settingsProvider.isDarkEnabled()?"assets/images/body_sebha_dark.png":
            "assets/images/body_sebha_logo.png"),
          ),
          SizedBox(height: 30,),
          Text(AppLocalizations.of(context)!.numsOfTasbeh,style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.secondary,)),
          SizedBox(height: 30,),
          Container(
            

            width: 100,
            height: 100,
            color: Theme.of(context).colorScheme.onPrimary,
            child: Padding(
              padding: EdgeInsets.only(top: 32,left:38,right: 38),
              child: Text("$count",style:  Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,),),
            )
          ),
          Divider(height: 20,),
          InkWell(
            onTap: (){
              count++;
              setState(() {
                terns+=1/33;
              });
            },
            child: Container(
              height: 80,
              width: 160,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20),),
              color:  Theme.of(context).colorScheme.onPrimary,
              )
              ,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("سبحان الله",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary, ),
            ),
              )),
          )
        ],
      ),

    );
  }
}
