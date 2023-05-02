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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    "${args.content}",
                    style: GoogleFonts.amiri(
                      color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,fontSize: 22),
                  );
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
