import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                settingsProvider.ChangeLanguage("en");
              },
              child: settingsProvider.currentLocal == 'en'
                  ? GetSelectedItem("English")
                  : GetUnSelectedItem("English")),
          SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: () {
                settingsProvider.ChangeLanguage("ar");
              },
              child: settingsProvider.currentLocal == 'en'
                  ? GetUnSelectedItem("عربي")
                  : GetSelectedItem("عربي")),
        ],
      ),
    );
  }

  Widget GetSelectedItem(String title) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Theme.of(context).accentColor)),
            Icon(Icons.check, color: Theme.of(context).accentColor),
          ],
        ),
      ),
    );
  }

  Widget GetUnSelectedItem(String title) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
