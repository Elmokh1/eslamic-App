







import 'package:flutter/material.dart';

class radio_tab extends StatelessWidget {
  const radio_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Image.asset("images/radio_image.png"),
            ),
            Text("اذاعه القران الكريم",style: TextStyle(
              fontSize: 25,
              color: Color(0xff242424),
            ),),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("images/Icon metro-next.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Icon(Icons.play_arrow,size: 40,color: Color(0xffB7935F),),
                  ),
                  Container(
                    child: Image.asset("images/Icon metro-next-2.png"),
                  )

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
