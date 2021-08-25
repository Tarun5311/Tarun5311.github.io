//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Project.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'components/home_banner.dart';
import 'components/projects.dart';
import '../../models/Education.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AnimatedHomeBanner(),
        Projects(),
        //SizedBox(height: defaultPadding/3,),
        
        education(),
        Divider(),
      ],

    );
  }
}

class education extends StatelessWidget {
  const education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
      Text(
        "Education",
        style: Theme.of(context).textTheme.headline6,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(my_education.length, (index) => Padding(
            padding: EdgeInsets.only(right: defaultPadding),
            child: EducationCard(ind: index),
          ))
        ),
      )


        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.ind,
  }) : super(key: key);

  final int ind;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            my_education[ind].name!,
            style: Theme.of(context).textTheme.subtitle2!,
          ),
          SizedBox(height: defaultPadding/4,),
          Text(
            my_education[ind].timeperiod!,
          ),
          SizedBox(height: defaultPadding,),
          Text(
            my_education[ind].score!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

