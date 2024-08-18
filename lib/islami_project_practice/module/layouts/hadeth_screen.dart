import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project_again/islami_project_practice/module/layouts/hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethScreen extends StatefulWidget {
   HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
List<Hadeth>alhadeth=[];
 
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    readHadethfile();
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      // when add appBar: AppBar(
      //         backgroundColor: Colors.blue,
      //       ),  it makes another app bar
        body: Column(

            crossAxisAlignment:CrossAxisAlignment.center ,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Image.asset("assets/images/hadeth_logo.png"),
        Divider(
          thickness: 2,
          color: Color(0xffB7935F),
        ),
              Text(AppLocalizations.of(context)!.hadeth,style: TextStyle(fontSize: 25),),
              Divider(
                thickness: 2,
                color: Color(0xffB7935F),
              ),
              Expanded(
                child: alhadeth.isNotEmpty?ListView.separated(itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
Navigator.pushNamed(context, HadethDetails.routname,arguments: alhadeth[index]);
                    },
                    child: Text(alhadeth[index].title,
                    textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25),),
                  );

                },
                itemCount: alhadeth.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: Color(0xffB7935F),
                  );
                },)
                    :Center(child: CircularProgressIndicator()),
              ),

            ]
        )
    );
  }

void readHadethfile()async{
    String filecontent=await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> sepratedahadeth=filecontent.split("#");
    for(int i=0;i<sepratedahadeth.length;i++){
      String singlehadth=sepratedahadeth[i];
      List<String> lines=singlehadth.trim().split("\n");
      String title=lines[0];
      lines.removeAt(0);
      String content=lines.join("\n");
     Hadeth mohtwa= Hadeth(title,content);
     alhadeth.add(mohtwa);
    }
    setState(() {

    });
}
}
class Hadeth{
  String title;
  String content;
  Hadeth(this.title,this.content);
}
