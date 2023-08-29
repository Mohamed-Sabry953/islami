import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/hadethcontent.dart';
import 'package:islami/models/SuraModel.dart';
import 'package:islami/models/hadethModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class ahatethTap extends StatefulWidget {
  @override
  State<ahatethTap> createState() => _ahatethTapState();
}
List<hadethModel>Hadethdata=[];

class _ahatethTapState extends State<ahatethTap> {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingprovider>(context);
    if(Hadethdata.isEmpty){
      loadfile();
    }
    return Center(
      child:
      Column(
        children: [
          Center(
              child: Image(
                  image: AssetImage('assets/images/ahadeth.png'))),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,
            thickness: 2,
          ),
          Text(AppLocalizations.of(context)!.ahadeth,
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
                    Navigator.pushNamed(context, HadethContent.routeName,arguments:Hadethdata[index] );
                  },
                  child: Center(
                    child: Text(
                      Hadethdata[index].hadethtitle,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                );
              },
              itemCount: Hadethdata.length,
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
    ) ;
  }

  loadfile() async {
    String file=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>hadeth=file.split('#');


    for(int i=0;i<=hadeth.length;i++){
      List<String>hadethlines= hadeth[i].trim().split('\n');
      String hadethtitle=hadethlines[0];
      hadethlines.removeAt(0);
      List<String>hadethcontent=hadethlines;
      Hadethdata.add(hadethModel(hadethtitle, hadethcontent));
    setState(() {

    });
    }
  }
}
