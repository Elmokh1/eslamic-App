import 'package:eslamic_app/Provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class themebottomsheet extends StatefulWidget {

  @override
  State<themebottomsheet> createState() => _themebottomsheetState();
}

class _themebottomsheetState extends State<themebottomsheet> {
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
              settingsProvider.changeTheme(ThemeMode.dark);
            },
            child: settingsProvider.isDark()
                ? getSelectedItem("Dark")
                : getUnSelectedItem("Dark"),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.light);
            },
            child: settingsProvider.isDark()
                ? getUnSelectedItem("Light")
                : getSelectedItem("Light"),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
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
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Theme.of(context).accentColor),
            ),
            Icon(Icons.check, color: Theme.of(context).accentColor),
          ],
        ),
      ),
    );
  }

  Widget getUnSelectedItem(String title) {
    return Padding(
      padding:  EdgeInsets.all(20),
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
