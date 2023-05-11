import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/settings_provider.dart';

class Sebha_tab extends StatefulWidget {
  @override
  State<Sebha_tab> createState() => _Sebha_tabState();
}

class _Sebha_tabState extends State<Sebha_tab> {
  int Sebhanum = 0;
  int index = 0;
  int num = 0;
  List<String> tasbeh = [
    "سبحان الله",
    "الله اكبر ",
    "الحمد لله",
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child:  Image(
                        image: AssetImage(
                          settingsProvider.getmainbacksebhalogo(),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(top: 65),
                      alignment: Alignment.center,
                      child: Transform.rotate(
                        angle: num * pi / 18,
                        child:  Image(
                          image: AssetImage(
                            settingsProvider.getmainbacksebhahead(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                          num =0;
                        });
                      },
                      child: Icon(Icons.refresh, color: Colors.deepOrange)),
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
                            num++;
                          });
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
                      child: Icon(Icons.arrow_forward_rounded,
                          color: Colors.deepOrange),
                      onTap: () {
                        if (index > 0) {
                          index = index - 1;
                          Sebhanum = 0;
                          num =0;
                        } else {
                          index = 2;
                          Sebhanum = 0;
                          num =0;

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
