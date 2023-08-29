import 'package:flutter/material.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/models/SuraModel.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:islami/suracontent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class quranTap extends StatelessWidget {
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
    var provider=Provider.of<settingprovider>(context);
    return Center(
      child:
          Column(
            children: [
              Center(
                  child: Image(
                      image: AssetImage('assets/images/Screenshot.png'))),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,
                thickness: 2,
              ),
              Text(AppLocalizations.of(context)!.suraname,
                  style: Theme.of(context).textTheme.displayLarge),
              Divider(
                color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,
                thickness: 2,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Sura.routeName,arguments: SuraModel(suraNames[index], index));
                        },
                      child: Center(
                        child: Text(
                          suraNames[index],
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    );
                  },
                  itemCount: suraNames.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                      color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,
                    );
                  },
                ),
              )
            ],
          ),
    );
  }
}
