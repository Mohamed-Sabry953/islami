import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/models/SuraModel.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class Sura extends StatefulWidget {
  static const String routeName='sura';

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  List<String>suraLines=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraModel;
    var provider=Provider.of<settingprovider>(context);
    if(suraLines.isEmpty ){
      loadfile(args.index);
    }
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(provider.themeMode==ThemeMode.light
            ?('assets/images/bg3.png'):('assets/images/dark_bg.png'),fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(args.suraName,style:Theme.of(context).textTheme.displayMedium ,),
          ),
          body: Container(
            alignment: Alignment.center,
            margin: EdgeInsetsDirectional.all(15),
            padding: EdgeInsetsDirectional.all(20),
            decoration: BoxDecoration(
            color: provider.themeMode==ThemeMode.light?Colors.white:Theme.of(context).primaryColor,
              border: Border.all(
                width: 2,
                color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            child: ListView.separated(itemBuilder: (context,index){
              return Text(suraLines[index],textAlign: TextAlign.center,style: Theme.of(context).textTheme.displaySmall,);
            }
            , separatorBuilder: (context,index){
              return Divider(
                color: provider.themeMode==ThemeMode.light?Theme.of(context).primaryColor:MyThemedata.yellowColor,
                indent: 15,
                endIndent: 15,
              );
                }, itemCount: suraLines.length),
          ),
        ),
      ],
    );
  }
  loadfile(int index) async {
    String files=await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String>suralines=files.split("\n");
    suraLines=suralines;
    setState(() {

    });
  }

}
