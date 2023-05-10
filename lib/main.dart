import 'package:eslamic_app/Hadeth/hadeth-tab.dart';
import 'package:eslamic_app/Home%20Screen.dart';
import 'package:eslamic_app/Provider/settings_provider.dart';
import 'package:eslamic_app/Provider/settings_provider.dart';
import 'package:eslamic_app/Quran/sura_details_screeb.dart';
import 'package:eslamic_app/Splash.dart';
import 'package:eslamic_app/My_theme.dart';
import 'package:eslamic_app/Settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Hadeth/hadeth_details_screen.dart';

main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingsProvider.currentMode,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Suradetails.routeName: (context) => Suradetails(),
        Hadethdetails.routeName: (context) => Hadethdetails(),
        SplashScreen.routeName: (context) => SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
