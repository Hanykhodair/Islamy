
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/sura_model.dart';

class SuraDetails extends StatefulWidget {
 static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(lines.isEmpty) {
      loadFile(args.suraIndex);
    }
    return Container(
      decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/background.png')
      )
      ),
      child: Scaffold(
          appBar: AppBar(title: Text(args.suraName,
              style: Theme.of(context).textTheme.bodyLarge,),),

        body: Card(
          elevation: 14,
          margin: EdgeInsets.all(8),
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: MyThemeData.blackColor),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            margin: EdgeInsets.all(15),
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: MyThemeData.primaryColor,
                  thickness: 1,
                  endIndent: 40,
                  indent: 40,
                ),
                itemBuilder: (context,index){
              return Text('${lines[index]}(${index + 1})',
                textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,);
            },itemCount: lines.length),
          ),
        ),
      ),
    );
  }

  List<String>lines=[];

  void loadFile(int index)async{
    String sura = await rootBundle.loadString('assets/files/${index+1}.txt');
    lines = sura.split('\n');
    setState(() {

    });
  }
}
