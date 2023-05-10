

import 'package:flutter/cupertino.dart';

class Hadethwidget extends StatelessWidget {

  String Hadethcontent;
  double fontsize;

  Hadethwidget(this.Hadethcontent,this.fontsize,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      alignment: Alignment.center,
      child: Text("$Hadethcontent",
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize:fontsize),
      ),
    );
  }
}
