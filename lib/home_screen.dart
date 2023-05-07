import 'package:flutter/material.dart';
import 'package:islami_app/tabs/ahadeth.dart';
import 'package:islami_app/tabs/quran.dart';
import 'package:islami_app/tabs/radio.dart';
import 'package:islami_app/tabs/sebha.dart';
import 'package:islami_app/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 4;
  List<Widget> tabs = [SettingsTab(), RadioBar(), Sebha(), Ahadeth(), Quran()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
              Theme.of(context).colorScheme.brightness == Brightness.light
                  ? "assets/images/home_bg.png"
                  : "assets/images/dark_bg.png",
              fit: BoxFit.fill),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "اسلامى",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "الاعدادات",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue.png"),
                    size: 30),
                label: "الراديو",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png"),
                      size: 30),
                  label: "السبحه"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png"),
                      size: 30),
                  label: "الاحاديث"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png"),
                      size: 30),
                  label: "القران"),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
