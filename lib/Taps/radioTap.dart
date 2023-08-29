import 'package:flutter/material.dart';
import 'package:islami/Themedata.dart';
import 'package:islami/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class radioTap extends StatelessWidget {
  const radioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingprovider>(context);
    return 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/radio_bg.png')),
              SizedBox(height: 10,),
              Text('اذاعة القرآن الكريم',style: Theme.of(context).textTheme.displaySmall,),
              SizedBox(height: 25,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 40,),color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,size: 45,),color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,size: 40,),color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:Theme.of(context).primaryColor,),
                  ],
                ),
              )
            ],
          ),
        );
  }
}
