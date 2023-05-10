import 'package:eslamic_app/Quran/Sura_Details_Arg.dart';
import 'package:eslamic_app/Quran/verses_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../Provider/settings_provider.dart';

class Suradetails extends StatefulWidget {
  static const String routeName = "sura-details";
  @override

  State<Suradetails> createState() => _SuradetailsState();
}

class _SuradetailsState extends State<Suradetails> {

  List<String> verses = [];
  double currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    SuraDetailsScreenArg args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArg;
    if (verses.isEmpty) readFile(args.index + 1);

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
        image: AssetImage(settingsProvider.getmainbackGround()),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Islami"),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Column(
                children: [
                  Slider(
                    value: currentSliderValue,
                    min: 20,
                    max: 60,
                    label: currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue = value;
                      });
                    },
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 65),
                      child: ListView.separated(
                        itemBuilder: (context, index) => verseswidget(
                            verses[index], index + 1, currentSliderValue),
                        itemCount: verses.length,
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Divider(
                            thickness: 1.5,
                            color: Theme.of(context).accentColor,
                            height: 8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  void readFile(int fileindex) async {
    String fileContent = await rootBundle.loadString("files/$fileindex.txt");
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }
}
