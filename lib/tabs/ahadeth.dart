import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Ahadeth extends StatefulWidget {
  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadFile();
    }
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/ahadeth_background.png",
              fit: BoxFit.fill,
            ),
            Divider(
              thickness: 3,
              color: Theme.of(context).colorScheme.primary,
            ),
            Text(
              AppLocalizations.of(context)!.ahadeth,
              style: GoogleFonts.amiri(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 3,
              color: Theme.of(context).colorScheme.primary,
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, HadethDetails.routeName,arguments: allAhadeth[index]);
                        },
                        child: Center(
                          child: Text(
                            allAhadeth[index].title,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 2,
                        endIndent: 30,
                        indent: 30,
                        color: Theme.of(context).colorScheme.primary,
                      );
                    },
                    itemCount: allAhadeth.length)),
          ],
        ),
      ),
    );
  }

  void loadFile() {
    rootBundle.loadString("assets/files/ahadeth .txt").then(
      (value) {
        List<String> hadethContent = value.split("#");
        for (int i = 0; i < hadethContent.length; i++) {
          List<String> hadethLines = hadethContent[i].trim().split("\n");
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List<String> content = hadethLines;
          HadethModel hadethModel = HadethModel(title, content);
          allAhadeth.add(hadethModel);
          setState(() {});
        }
      },
    ).catchError((error) {
      print(error);
    });
  }
}
