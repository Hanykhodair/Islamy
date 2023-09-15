import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/tabs/AhadithTab.dart';
import 'package:islamyapp/tabs/QuranTab.dart';
import 'package:islamyapp/tabs/RadioTab.dart';
import 'package:islamyapp/tabs/SebhaTab.dart';
import 'package:islamyapp/tabs/SettingsTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int index =0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
        width: double.infinity, fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.black
            ),),
          ),
          body: tabs[index],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {

              });
            },
              items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png'),),
                label: "Quran",
                backgroundColor: MyThemeData.primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png'),), label: "Sebha", backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png'),),label: "Radio", backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadith.png'),),label: "Ahadith", backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings", backgroundColor: MyThemeData.primaryColor),
          ]),
        ),
      ],
    );
  }
  List<Widget>tabs=[QuranTab(), SebhaTab(), RadioTab(), AhadithTab(), SettingsTab()];

}
