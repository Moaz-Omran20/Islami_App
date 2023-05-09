import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';

class SplashScreen extends StatelessWidget {

  static const String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() => Navigator.pushReplacementNamed(
        context, HomeScreen.routeName),);
    return Scaffold(
     body: Container(
       height: double.infinity,
        width: double.infinity,
        child: Image.asset(Theme.of(context).colorScheme.brightness==Brightness.dark?"assets/images/dark_splash.png" :"assets/images/splash_screen.png",fit: BoxFit.fill,),
      )
    ) ;
  }
}
