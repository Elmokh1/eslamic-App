

import 'package:flutter/cupertino.dart';

class verseswidget extends StatelessWidget {

  String versescontent;
  int index ;
  double fontsize;

  verseswidget(this.versescontent,this.index,this.fontsize,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      alignment: Alignment.center,
      child: Text("$versescontent($index)",
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize:fontsize),
      ),
    );
  }
}
