import 'package:eslamic_app/Quran/sura_title_widget.dart';
import 'package:flutter/material.dart';

class Quran_tab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Column(
        children: [
          Expanded(flex:2,child: Image.asset("images/qur2an_screen_logo.png")),
          Divider(
            color: theme.accentColor,
            thickness: 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "اسم السورة",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500

                ),

              ),
              // Text(
              //   "Sura Number",
              //   style: TextStyle(
              //       fontSize: 30,
              //       fontWeight: FontWeight.w500
              //
              //   ),
              //
              // ),
            ],
          ),
          Divider(
            color: theme.accentColor,
            thickness: 1.5,
          ),
          Expanded(
            flex: 5,
            child: ListView.separated(
                itemBuilder: (context, index) => SuraTitle(
                  names[index],
                  index,
                ),
                //     Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("${index+1}"),
                //
                //     Text(names[index]),
                //   ],
                // ),
                separatorBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Divider(thickness: 1.5, color: theme.accentColor,),
                    ),
                itemCount: names.length),
          )

        ],
      ),

    );
  }

  List<String>
  names = [
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
    "هود"
    ,
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
    "المؤمنون"
    ,
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
    "سبأ"
    ,
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
    "الأحقاف"
    ,
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
    "المجادلة"
    ,
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
    "المعارج"
    ,
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
    "الإنفطار"
    ,
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
    "الشرح"
    ,
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
}
