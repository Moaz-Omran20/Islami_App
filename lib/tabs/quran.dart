import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/sura_details_args.dart';

class Quran extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            child: Container(
                height: 220,
                child: Image.asset(
                  "assets/images/quran_bg.png", fit: BoxFit.fill,)),
          ),
          Divider(
            thickness: 3,
            color: Theme
                .of(context)
                .primaryColor,
          ),
          Text(
            "اسم السورة",
            style:  GoogleFonts.amiri(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold)
          ),
          Divider(
            thickness: 3,
            color: Theme
                .of(context)
                .primaryColor,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SuraDetails.routeName,
                            arguments:
                            SuraDetailsArgs(suraNames[index], index));
                      },
                      child: Center(
                        child: Text(
                          suraNames[index],
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) =>
                    Divider(
                        thickness: 2,
                        color: Theme
                            .of(context)
                            .primaryColor,
                        indent: 30,
                        endIndent: 30),
                itemCount: suraNames.length),
          ),
        ],
      ),
    );
  }
}
