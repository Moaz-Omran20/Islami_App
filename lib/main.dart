import 'package:flutter/material.dart';
import 'package:islami_app/app_themes.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails(),
        SplashScreen.routeName:(context)=>SplashScreen(),
        HadethDetails.routeName:(context)=>HadethDetails(),
      },
      theme:AppThemes.lightTheme,

    );
  }
}
