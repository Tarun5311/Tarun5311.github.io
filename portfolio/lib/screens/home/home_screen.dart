import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'components/education.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'components/home_banner.dart';
import 'components/projects.dart';
import '../../models/Experience.dart';
import '../../responsive.dart';


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

class internship extends StatelessWidget {
  const internship({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(padding: EdgeInsets.only(bottom: defaultPadding/2)),
          SingleChildScrollView(
            child: Row(
              children: List.generate(my_experience.length, (index) => Padding(
              padding: EdgeInsets.only(right: defaultPadding),
              child: internshipCard(ind: index),
            )),
            ),
          )
        ],
      ),
    );
  }
}

class internshipCard extends StatelessWidget {
  const internshipCard({
    Key? key,
    required this.ind,
  }) : super(key: key);

  final int ind;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 220,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            my_experience[0].name,
            style: Theme.of(context).textTheme.subtitle2!,
          ),
          SizedBox(height: defaultPadding/4,),
          Text(
            my_experience[0].tag,
          ),
          SizedBox(height: defaultPadding,),
          Text(
            my_experience[0].description,
            maxLines: Responsive.isMobileLarge(context) ? 4 : 7,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

