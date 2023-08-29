import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Taps/ahatethTap.dart';
import 'package:islami/Taps/quranTap.dart';
import 'package:islami/Taps/radioTap.dart';
import 'package:islami/Taps/sebhaTap.dart';
import 'package:islami/Taps/settingTap.dart';
import 'package:islami/Themedata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<Widget> Taps = [
    quranTap(),
    ahatethTap(),
    SebhaTab(),
    radioTap(),
    settingTap(),
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingprovider>(context);
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(provider.themeMode==ThemeMode.light
        ?('assets/images/bg3.png'):('assets/images/dark_bg.png'),fit: BoxFit.fill,),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(AppLocalizations.of(context)!.apptitle,
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            Expanded(child: Taps[selectedindex])
          ],
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/moshaf_gold.png'),
                size: 35,
              ),
              backgroundColor:Theme.of(context).primaryColor,
              label: AppLocalizations.of(context)!.quranBar),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ahateth.png'),
                size: 35,
              ),
              backgroundColor: Theme.of(context).primaryColor,
              label: AppLocalizations.of(context)!.ahadethBar),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/sebha.png'),
                size: 35,
              ),
              backgroundColor: Theme.of(context).primaryColor,
              label: AppLocalizations.of(context)!.sebhaBar),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/radio.png'),
                size: 35,
              ),
              backgroundColor: Theme.of(context).primaryColor,
              label: AppLocalizations.of(context)!.radioBar),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 35,
              ),
              backgroundColor:Theme.of(context).primaryColor,
              label: AppLocalizations.of(context)!.settingBar),
        ],
        currentIndex: selectedindex,
        onTap: (int value) {
          selectedindex = value;
          setState(() {});
        },
      ),
    );
  }
}
