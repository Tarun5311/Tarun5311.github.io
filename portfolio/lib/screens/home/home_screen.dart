//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AnimatedHomeBanner()
      ],

    );
  }
}
