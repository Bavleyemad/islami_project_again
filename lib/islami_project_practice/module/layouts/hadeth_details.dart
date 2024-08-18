import 'package:flutter/material.dart';
import 'package:islami_project_again/core/widgets/default_screen.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/hadeth_screen.dart';

class HadethDetails extends StatelessWidget {
  static const String routname="Hadeth details";
  const HadethDetails({super.key});
  

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;
    return DefaultScreen(body: Scaffold(
      appBar: AppBar(
        title: Text(hadeth.title),
      ),
      body: Card(
          elevation: 24,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          margin: EdgeInsets.symmetric(vertical: 64,horizontal: 24),
          child:Column(
            children:[ Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(hadeth.content,style:  Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,),
                ),
              ),
            ),
      ]
      )
      ),
    ));
  }
}
