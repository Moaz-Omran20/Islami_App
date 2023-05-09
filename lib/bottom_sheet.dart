import 'package:flutter/material.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class ShowModelBottomSheet extends StatelessWidget {
  @override
  Widget build(context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeMode(ThemeMode.light);
            },
            child: Row(
              children: [
                Text("Light",style: TextStyle(color:Theme.of(context).colorScheme.brightness == Brightness.light
                    ? Theme.of(context).colorScheme.primary
                    : Colors.black),),
                Spacer(),
                Icon(Icons.done,
                    color: Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black,
                    size: 30),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeMode(ThemeMode.dark);
            },
            child: Row(
              children: [
                Text(
                  "Dark",
                  style: TextStyle(color: Theme.of(context).colorScheme.brightness == Brightness.dark
                      ? Theme.of(context).colorScheme.primary
                      : Colors.black),
                ),
                Spacer(),
                Icon(Icons.done, color: Theme.of(context).colorScheme.brightness == Brightness.dark
                    ? Theme.of(context).colorScheme.primary
                    : Colors.black, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
