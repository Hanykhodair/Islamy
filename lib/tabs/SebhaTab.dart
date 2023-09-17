import 'package:flutter/material.dart';
import 'package:islamyapp/MyThemeData.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String>tasbeeh=['سبحان الله','الحمد لله','الله أكبر','لاإلاه إلا الله'];
  String newTasbiha ='';
  @override
  Widget build(BuildContext context) {
    return Column(
  children: [
      Center(child: Image(image: AssetImage('assets/images/sebha_bg.png'),)),
    Divider(
      thickness: 1,
      color: MyThemeData.primaryColor,
    ),
    Text('Count',style: Theme.of(context).textTheme.bodyLarge,),
    Divider(
      thickness: 1,
      color: MyThemeData.primaryColor,
    ),
    Divider(height: 30,),
    Container(
      padding: EdgeInsets.fromLTRB(30,10,30,10),
        color: MyThemeData.primaryColor,
        child: Text(counter.toString(), style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Colors.white,
        ),)),
    Divider(height: 30,),
    ElevatedButton(onPressed: (){
      for(int i=0; i<=tasbeeh.length; i++)
        {
      if (counter<15)
      {
        counter++;
        break;
      }
      else
        {
          if (tasbeeh[i]==tasbeeh.lastOrNull){
            i=0;
          }
          newTasbiha=tasbeeh[i];
          counter=0;
        }
        }
      setState(() {

      });
    },
    child: Text(newTasbiha, style: TextStyle(fontWeight: FontWeight.bold)),style: ElevatedButton.styleFrom(
          backgroundColor: MyThemeData.primaryColor,
        ),),
   ], );
  }
}
