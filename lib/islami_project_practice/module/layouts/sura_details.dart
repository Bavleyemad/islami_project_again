import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project_again/core/widgets/default_screen.dart';
import 'package:islami_project_again/core/widgets/verse_content.dart';

class SuraDetails extends StatefulWidget {
  static const String routname="QuranDetails";
   SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {

    var args=ModalRoute.of(context)!.settings.arguments as SuraDetailsArgu;
    if(verses.isEmpty){
      readFileData(args.chapterindex);
    }
    return DefaultScreen(body: Scaffold(
      appBar: AppBar(
        title: Text(args.chaptertitle),
      ),
      body: Card(
        elevation: 24,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        margin: EdgeInsets.symmetric(vertical: 64,horizontal: 24),
        child:verses.isNotEmpty?
        ListView.builder(itemBuilder: (context, index) {
          return VersesContent(index: index, content: verses[index]);
        },itemCount: verses.length,)
        :Center(child: CircularProgressIndicator())
      ),
    ));
  }

  void readFileData(int fileindex)async{
    String fileContent= await rootBundle.loadString("assets/files/${fileindex+1}.txt");
    List<String>lines=fileContent.trim().split("\n");
    setState(() {
      verses=lines;
    });
  }
}
class SuraDetailsArgu{
  int chapterindex;
  String chaptertitle;
  SuraDetailsArgu(this.chapterindex,this.chaptertitle);
}
