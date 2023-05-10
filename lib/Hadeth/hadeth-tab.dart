import 'package:eslamic_app/Hadeth/hadeth_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class hadeth_tab extends StatefulWidget {
  @override
  State<hadeth_tab> createState() => _hadeth_tabState();
}

class _hadeth_tabState extends State<hadeth_tab> {
  List<Hadeth> HadethList = [];

  @override
  Widget build(BuildContext context) {
    if (HadethList.isEmpty) {
      loadhadethFile();
    }
    var theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: Image.asset("images/hadeth_logo.png"),
          flex: 1,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Divider(
                color: theme.accentColor,
                thickness: 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "اسم الحديث",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  // Text(
                  //   "Sura Number",
                  //   style: TextStyle(
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.w500
                  //
                  //   ),
                  //
                  // ),
                ],
              ),
              Divider(
                color: theme.accentColor,
                thickness: 1.5,
              ),
              Expanded(
                flex: 5,
                child: HadethList.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.separated(
                        itemBuilder: (context, index) =>
                            HadethTitle(HadethList[index]),
                        //     Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text("${index+1}"),
                        //
                        //     Text(names[index]),
                        //   ],
                        // ),
                        separatorBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 80.0),
                              child: Divider(
                                thickness: 1.5,
                                color: theme.accentColor,
                              ),
                            ),
                        itemCount: HadethList.length),
              ),
            ],
          ),
        )
      ],
    );
  }

  void loadhadethFile() async {
    String fileContent = await rootBundle.loadString("files/ahadeth .txt");
    List<String> allhadethList = fileContent.split('#\r\n');
    for (int i = 0; i < allhadethList.length; i++) {
      List<String> singleHadeth = allhadethList[i].split('\n');
      String title = singleHadeth[0];
      singleHadeth.removeAt(0);
      Hadeth hadeth = Hadeth(singleHadeth, title);
      HadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth(this.content, this.title);
}
