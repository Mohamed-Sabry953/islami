import 'package:flutter/material.dart';
import 'package:islami/Home.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/hadethcontent.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:islami/suracontent.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => settingprovider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<settingprovider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.language),
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      theme:MyThemedata.lightTheme,
      darkTheme: MyThemedata.darkTheme,
      themeMode: provider.themeMode,

      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName:(context)=>homeScreen(),
        Sura.routeName:(context)=>Sura(),
        HadethContent.routeName:(context)=>HadethContent(),
      },
    );
  }
}
