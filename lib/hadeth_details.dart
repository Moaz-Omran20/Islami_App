import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/home_bg.png", fit: BoxFit.fill)),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: GoogleFonts.amiri(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "${args.content}",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
