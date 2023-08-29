

import 'package:flutter/material.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/buttonsheet/Showbuttonsheetlang.dart';
import 'package:islami/buttonsheet/Showbuttonsheettheme.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class settingTap extends StatelessWidget {
  const settingTap({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingprovider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: InkWell(
                onTap: (){
                  showButtonSheetLanguage(context);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Language',textAlign: TextAlign.start,style: Theme.of(context).textTheme.displaySmall,),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(provider.language=='ar'?'عربى':'English',style: Theme.of(context).textTheme.displayMedium,),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).primaryColor,width: 1),
                        borderRadius: BorderRadius.circular(25),

                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Theming',textAlign: TextAlign.start,style: Theme.of(context).textTheme.displaySmall,),
                  InkWell(
                    onTap: (){
                      showButtonSheetTheme(context);
                    },
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Light',style: Theme.of(context).textTheme.displayMedium,),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color:Theme.of(context).primaryColor,width: 1),
                        borderRadius: BorderRadius.circular(25),

                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  showButtonSheetLanguage(BuildContext context){
    showModalBottomSheet(context: context, builder:(context){
      return Showbuttonsheetlang();
    });
  }
  showButtonSheetTheme(BuildContext context){
    showModalBottomSheet(context: context, builder:(context){
      return Showbuttonsheettheme();
    });
  }
}
