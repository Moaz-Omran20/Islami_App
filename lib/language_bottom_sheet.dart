import 'package:flutter/material.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: Row(
              children: [
                Text(
                  "Arabic",
                  style: TextStyle(
                      color: provider.language == "ar"
                          ? Theme.of(context).colorScheme.primary
                          : Colors.black),
                ),
                Spacer(),
                Icon(Icons.done,
                    color: provider.language == "ar"
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black,
                    size: 30),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: Row(
              children: [
                Text(
                  "English",
                  style: TextStyle(
                      color: provider.language == "en"
                          ? Theme.of(context).colorScheme.primary
                          : Colors.black),
                ),
                Spacer(),
                Icon(Icons.done,
                    color: provider.language == "en"
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black,
                    size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
