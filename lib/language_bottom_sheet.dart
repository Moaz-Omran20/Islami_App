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

            },
            child: Row(
              children: [
                Text("Arabic"),
                Spacer(),
                Icon(Icons.done,
                    color: Theme.of(context).primaryColor, size: 30),
              ],
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Row(
              children: [
                Text(
                  "English",
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                Icon(Icons.done, color: Colors.black, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
