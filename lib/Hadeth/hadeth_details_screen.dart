import 'package:eslamic_app/Hadeth/hadeth_Widget.dart';
import 'package:eslamic_app/Quran/Sura_Details_Arg.dart';
import 'package:eslamic_app/Quran/verses_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../Provider/settings_provider.dart';
import 'hadeth-tab.dart';





class Hadethdetails extends StatefulWidget {

  static const String routeName="Hadeth-details";

  @override
  State<Hadethdetails> createState() => _HadethdetailsState();
}

class _HadethdetailsState extends State<Hadethdetails> {

  double currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    Hadeth args=ModalRoute.of(context)?.settings.arguments as Hadeth;
    var settingsProvider = Provider.of<SettingsProvider>(context);


    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.getmainbackGround()),
          fit: BoxFit.fill,
        )
      ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: const Text("Islami"),),
        body:
        Column(
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
                margin: const EdgeInsets.symmetric(horizontal:30,vertical: 65),
                child: ListView.builder(itemBuilder: (context, index) => Hadethwidget(args.content[index],currentSliderValue),
                itemCount: args.content.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
