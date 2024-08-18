import 'package:flutter/material.dart';

class VersesContent extends StatelessWidget {
  int index;
  String content;
   VersesContent({required this.index,required this.content,super.key});


  @override
  Widget build(BuildContext context) {
    return Text("$content{${index+1}}",
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style:  Theme.of(context).textTheme.bodyMedium) ;
  }
}
