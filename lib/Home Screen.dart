import 'package:eslamic_app/Hadeth/hadeth-tab.dart';
import 'package:eslamic_app/Provider/settings_provider.dart';
import 'package:eslamic_app/Quran/Quran-tap.dart';
import 'package:eslamic_app/Radio/radio-tab.dart';
import 'package:eslamic_app/Sebha/sebha-tab.dart';
import 'package:eslamic_app/Settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  @override
  static const String routeName = "Home-Screen";

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;

  List<Widget> screensTab = [
    Quran_tab(),
    hadeth_tab(),
    Sebha_tab(),
    radio_tab(),
    settings(),
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                settingsProvider.getmainbackGround()
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
          body: screensTab[SelectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              this.setState(() {
                SelectedIndex = index;
              });
            },
            currentIndex: SelectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon:  ImageIcon(AssetImage("images/icon_quran.png")),
                  label:AppLocalizations.of(context)!.quran_title),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("images/icon_hadeth.png")),
                  label: AppLocalizations.of(context)!.hadeth_title),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("images/icon_sebha.png")),
                  label: AppLocalizations.of(context)!.sebha_title),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("images/icon_radio.png")),
                  label: AppLocalizations.of(context)!.radio_title),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings_title),
            ],
          ),
          appBar: AppBar(
            title:  Text(
              AppLocalizations.of(context)!.app_title,
            ),
          )),
    );
  }
}
