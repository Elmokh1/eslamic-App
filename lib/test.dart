import 'dart:math';

import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String> Tasbeh = [
    "سبحان الله", //0
    "الحمدلله", //1
    "الله اكبر", //2
  ];

  // int index = 0;
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage(
                  "assets/images/head of seb7a.png",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.only(top: 65),
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: num * pi / 18,
                child: const Image(
                  image: AssetImage(
                    "assets/images/body of seb7a.png",
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "عدد التسبيحات",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xABB7935F),
          ),
          child: Text(
            "$num",
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Tasbeh[1];
                setState(() {});
              },
              icon: Icon(
                Icons.arrow_left,
                size: 30,
                color: Theme.of(context).accentColor,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).accentColor,
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num++;
                    if (num + 1 == 35) {
                      print(num = 0);
                    }
                  });
                },
                child: Text(
                  Tasbeh[0],
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Tasbeh;
              },
              icon: Icon(
                Icons.arrow_right,
                size: 30,
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
/*ازاى تلف السبحة الطريقة 1
Transform.rotate(
              angle: 180 * pi / 180,
              child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/Ic_metro_next.png",
                  ),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
 */
/*ازاى تلف السبحة الطريقة 2
RotationTransition(
  turns: new AlwaysStoppedAnimation(15 / 360),
  child: new Text("Lorem ipsum"),
)
 */