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
              child: Image.asset("assets/images/Group 8.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "عدد التسبيحات",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
            ),
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFB7935F),
              ),
              child: Center(
                child: Text(
                  "$counter",
                  style: TextStyle(fontSize: 25,color: Colors.black),
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
              child: Text(
                "سبحان الله",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
