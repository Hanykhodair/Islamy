import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'HomeScreen.dart';
import 'sebha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // showPerformanceOverlay: true,
      initialRoute: HomeScreen.routeName,
      routes:{
        HomeScreen.routeName:(context)=>HomeScreen(),
        Sebha.routeName:(context)=>Sebha(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.lightTheme,

    );
  }
}

