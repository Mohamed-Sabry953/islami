import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class Showbuttonsheetlang extends StatelessWidget {
  const Showbuttonsheetlang({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingprovider>(context);
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  provider.changelanguage('en');
                },
                child: Row(
                  children: [
                    Text('English',
                        style: provider.language == 'en'
                            ? GoogleFonts.elMessiri(
                                color: provider.themeMode == ThemeMode.dark
                                    ? MyThemedata.yellowColor
                                    : Theme.of(context).primaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w600)
                            : GoogleFonts.elMessiri(
                                color: provider.themeMode == ThemeMode.dark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600)),
                    Spacer(),
                    Icon(Icons.done,
                        color: provider.language == 'en' &&
                                provider.themeMode == ThemeMode.dark
                            ? MyThemedata.yellowColor
                            : provider.language == 'en' &&
                                    provider.themeMode == ThemeMode.light
                                ? Theme.of(context).primaryColor
                                : Colors.black)
                  ],
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  provider.changelanguage('ar');
                },
                child: Row(children: [
                  Text(provider.language == 'ar' ? 'عربى' : 'Arbic',
                      style: provider.language == 'ar'
                          ? GoogleFonts.elMessiri(
                              color: provider.themeMode == ThemeMode.dark
                                  ? MyThemedata.yellowColor
                                  : Theme.of(context).primaryColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w600)
                          : GoogleFonts.elMessiri(
                              color: provider.themeMode == ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600)),
                  Spacer(),
                  Icon(Icons.done,
                      color: (provider.language == 'ar' &&
                              provider.themeMode == ThemeMode.light
                          ? Theme.of(context).primaryColor
                          : Colors.black))
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
