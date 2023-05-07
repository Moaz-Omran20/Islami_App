import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 180,
              child: Image.asset(
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? "assets/images/Group 8.png"
                      : "assets/images/sebha_dark.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "عدد التسبيحات",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Text(
                  "$counter",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                "سبحان الله",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.brightness==Brightness.dark? Theme.of(context).primaryColor :Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
