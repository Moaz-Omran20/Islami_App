import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_details_args.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/home_bg.png",
                fit: BoxFit.fill)),
        Scaffold(
          appBar: AppBar(
            title: Text(
              " سورة ${args.suraName} ",
              style:  GoogleFonts.amiri(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ListView.separated(
                    itemBuilder: (context, index) => RichText(
                          text: TextSpan(
                            children: [
                              // TextSpan(
                              //   text: " \u06dd${index+1} ",
                              //   style: GoogleFonts.amiri(
                              //       fontSize: 25,
                              //       color: Theme.of(context).primaryColor,
                              //       fontWeight: FontWeight.bold),
                              // ),
                              TextSpan(
                                text: "${verses[index]}",
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                    separatorBuilder: (context, index) => Divider(
                          thickness: 1,
                          color: Theme.of(context).primaryColor,
                        ),
                    itemCount: verses.length),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loadFile(index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
