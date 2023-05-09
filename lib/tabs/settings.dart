import 'package:flutter/material.dart';
import 'package:islami_app/bottom_sheet.dart';
import 'package:islami_app/language_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Theming"),
          const SizedBox(
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
          const SizedBox(
            height: 20,
          ),
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
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
                child: Text(provider.language == "ar"? "Arabic" : "English"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showModelSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      context: context,
      builder: (context) {
        return ShowModelBottomSheet();
      },
    );
  }void showLanguageSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      context: context,
      builder: (context) {
        return ShowLanguageBottomSheet();
      },
    );
  }
}

