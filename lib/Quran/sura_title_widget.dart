
import 'package:eslamic_app/Quran/Sura_Details_Arg.dart';
import 'package:eslamic_app/Quran/sura_details_screeb.dart';
import 'package:flutter/material.dart';

class SuraTitle extends StatelessWidget {
  int index;
  String title;
  SuraTitle( this.title,this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,Suradetails.routeName,arguments: SuraDetailsScreenArg(title, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
            title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
            ),
      ),
    );
  }
}
