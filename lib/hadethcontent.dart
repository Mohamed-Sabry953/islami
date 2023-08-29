import 'package:flutter/material.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/models/hadethModel.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class HadethContent extends StatelessWidget {
  static const String routeName = 'hadethcontent';

  const HadethContent({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingprovider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as hadethModel;
    return Stack(
      fit: StackFit.expand,
      children: [
          Image.asset(provider.themeMode==ThemeMode.light
              ?('assets/images/bg3.png'):('assets/images/dark_bg.png'),fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              args.hadethtitle,
              style: Theme.of(context).textTheme.displayMedium,
            ),
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
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    args.content[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  );
                },
                itemCount: args.content.length),
          ),
        ),
      ],
    );
  }
}
