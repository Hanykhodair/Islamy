import 'package:flutter/material.dart';
import 'package:islamyapp/sura_details.dart';
import 'package:islamyapp/sura_model.dart';
import '../MyThemeData.dart';

class QuranTab extends StatelessWidget {

  List<String>Suras=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/quran_image.png')),
        Divider(
          thickness: 2,
          color: MyThemeData.primaryColor,
        ),
      Text('Sura Names', style: Theme.of(context).textTheme.bodyLarge,),
        Divider(
          thickness: 2,
          color: MyThemeData.primaryColor,
        ),
     Expanded(
       child: ListView.separated(
           separatorBuilder: (context,index)=>
           Divider(
             thickness: 1,
             indent: 40,
             endIndent: 40,
             color: MyThemeData.primaryColor,
           ),
           itemBuilder: (context,index){
         return InkWell(
           onTap: (){
             Navigator.pushNamed(context, SuraDetails.routeName,
                 arguments:SuraModel(index, Suras[index]) );
           },
           child: Text(
             Suras[index], textAlign: TextAlign.center,
           style: Theme.of(context).textTheme.bodyLarge!.copyWith(
             color: Colors.brown),),
         );
       },itemCount: Suras.length),
     )
      ],
    );
  }
}
