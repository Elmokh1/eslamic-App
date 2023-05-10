import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Home Screen.dart';




class SplashScreen extends StatefulWidget {
  static const String routeName = "Splash-Screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 300,
        splash:CircleAvatar(
          radius: 300,
          backgroundImage: AssetImage(
            "images/logo2.png"
          ),
        ) ,
        nextScreen: HomeScreen());
  }
}
