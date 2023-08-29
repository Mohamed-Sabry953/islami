import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class Showbuttonsheettheme extends StatelessWidget {
  const Showbuttonsheettheme({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingprovider>(context);
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  provider.changeTheme(ThemeMode.light) ;
                },
                child: Row(
                  children: [
                    Text('light',style:GoogleFonts.elMessiri(
                color: provider.themeMode==ThemeMode.light?Theme.of(context).primaryColor:provider.themeMode==ThemeMode.dark?Colors.white:Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600)),
                    Spacer(),
                    Icon(Icons.done,color: provider.themeMode==ThemeMode.light?Theme.of(context).primaryColor:provider.themeMode==ThemeMode.dark?Colors.white:Colors.black,)
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
                onTap: (){
                  provider.changeTheme(ThemeMode.dark);
                },
                child: Row(
                  children: [
                    Text('Dark',style: GoogleFonts.elMessiri(
                    color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:provider.themeMode==ThemeMode.dark?Colors.white:Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
                    Spacer(),
                    Icon(Icons.done,color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:provider.themeMode==ThemeMode.dark?Colors.white:Colors.black,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
