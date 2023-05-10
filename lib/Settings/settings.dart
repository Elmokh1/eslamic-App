import 'package:eslamic_app/Home%20Screen.dart';
import 'package:eslamic_app/Quran/Quran-tap.dart';
import 'package:eslamic_app/Settings/Language_bottom_sheet.dart';
import 'package:eslamic_app/Settings/theme_bottom_sheet.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Theme'),
            ),
            InkWell(
              onTap: () {
                ShowThemeBottomSheet();
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 50,
                child: const Text("Dark"),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Theme.of(context).accentColor,
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Language'),
            ),
            InkWell(
              onTap: () {
                ShowLanguageBottomSheet();
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 50,
                child: const Text("English"),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Theme.of(context).accentColor,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ShowThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => themebottomsheet(),
    );
  }

  ShowLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
