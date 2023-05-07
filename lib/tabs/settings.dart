import 'package:flutter/material.dart';
import 'package:islami_app/bottom_sheet.dart';
import 'package:islami_app/language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theming"),
          SizedBox(
            height: 3,
          ),
          InkWell(
            onTap: () => showModelSheet(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Theme.of(context).colorScheme.primary),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Theme.of(context).colorScheme.brightness==Brightness.light? "Light":"Dark"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 3,
          ),
          InkWell(
            onTap: () => showLanguageSheet(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Theme.of(context).colorScheme.primary),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Arabic"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showModelSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      context: context,
      builder: (context) {
        return ShowModelBottomSheet();
      },
    );
  }void showLanguageSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      context: context,
      builder: (context) {
        return ShowLanguageBottomSheet();
      },
    );
  }
}

