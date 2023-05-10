
import 'package:eslamic_app/Hadeth/hadeth-tab.dart';
import 'package:eslamic_app/Hadeth/hadeth_details_screen.dart';
import 'package:eslamic_app/Quran/Sura_Details_Arg.dart';
import 'package:eslamic_app/Quran/sura_details_screeb.dart';
import 'package:flutter/material.dart';

class HadethTitle extends StatelessWidget {

  Hadeth hadeth;
  HadethTitle(this.hadeth,{super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,Hadethdetails.routeName,arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
            hadeth.title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
            ),
      ),
    );
  }
}
