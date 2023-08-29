import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String>Tasbeh=['سبحان الله','استغفر الله العظيم','الله أكبر'];
  int counter = 0;
  int counter2 = 0;
  bool visable=true;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingprovider>(context);
    return Center(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              counter += 1;
              if (counter == 33) {
                counter2 += 1;
                counter = 0;
              }
              if(counter2==Tasbeh.length){
                Tasbeh.add('!تم');
                visable=false;
              }
              setState(() {});
            },
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 12, bottom: 15),
              child: Image.asset(
                'assets/images/Sebhaimage.png',
                width: 232,
                height: 340,
                color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,
              ),
            ),
          ),
          Text(
              'عدد التسبيحات',
              style: Theme.of(context).textTheme.displayMedium
          ),
          SizedBox(
            height: 20,
          ),
          Visibility(
            visible: visable,
            child: Container(
              alignment: Alignment.center,
              width: 69,
              height: 81,
              decoration: BoxDecoration(
                  border: Border.all(color:Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).primaryColor),
              child: Text('$counter',style: Theme.of(context).textTheme.displayMedium,),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              Container(
                padding: EdgeInsetsDirectional.only(start: 35,end: 35),
                margin: EdgeInsetsDirectional.only(start: 35,end: 35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                  color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,),
                child: Center(
                  child: Text(
                      Tasbeh[counter2],
                      style: Theme.of(context).textTheme.displayMedium
                  ),
                ),
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ],
      ),
    );
  }

}
