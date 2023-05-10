import 'package:flutter/material.dart';

class Sebha_tab extends StatefulWidget {
  @override
  State<Sebha_tab> createState() => _Sebha_tabState();
}

class _Sebha_tabState extends State<Sebha_tab> {
  int Sebhanum = 0;
  int index = 0;
  List<String> tasbeh = [
    "سبحان الله",
    "الله اكبر ",
    "الحمد لله",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Padding(
                    padding: EdgeInsets.only(top: 75.0),
                    child: Image(
                      image: AssetImage(
                        "images/body_sebha_logo.png",
                      ),
                    ),
                  ),
                  const Image(
                    image: AssetImage(
                      "images/head_sebha_logo.png",
                    ),
                  ),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "عدد التسبيحات",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 81,
                    width: 69,
                    decoration: BoxDecoration(
                      color: const Color(0xffB7935F),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                        child: Text(
                      "${Sebhanum}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          Sebhanum = 0;
                        });
                      },
                      child: Icon(Icons.refresh)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // InkWell(
                    //   child: Icon(Icons.arrow_back_rounded),
                    //   onTap: () {
                    //     if (index <= 2) {
                    //       index = index + 1;
                    //     } else {
                    //       index = 0;
                    //     }
                    //     setState(() {});
                    //   },
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Sebhanum++;
                            for(int i =0; i<=tasbeh.length; i++) {
                              if (i > 0 && Sebhanum == 33) {
                                tasbeh[i];
                                Sebhanum = 0;
                               }
                                 // else if (i == 0 && Sebhanum == 33) {
                              //   i = 2;
                              //   Sebhanum = 0;
                              // }
                            }});
                        },
                        child: Container(
                          width: 137,
                          height: 51,
                          decoration: BoxDecoration(
                            color: const Color(0xffB7935F),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                              child: Text(
                            "${tasbeh[index]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Icon(Icons.arrow_forward_rounded),
                      onTap: () {
                        if (index > 0) {
                          index = index - 1;
                          Sebhanum =0;
                        } else {
                          index = 2;
                          Sebhanum =0;

                        }
                        setState(() {});
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
