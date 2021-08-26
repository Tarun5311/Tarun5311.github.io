import 'package:flutter/material.dart';
import 'components/education.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'components/home_banner.dart';
import 'components/projects.dart';
import 'components/internship.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AnimatedHomeBanner(),
        internship(),
        Projects(),        
        education(),
        Divider(),
      ],

    );
  }
}


