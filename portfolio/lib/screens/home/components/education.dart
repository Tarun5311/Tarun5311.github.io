import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Education.dart';
import 'education_card.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(top: defaultPadding),
          child: Row(
            children: List.generate(my_education.length, (index) => Padding(
              padding: EdgeInsets.only(right: defaultPadding),
              child: EducationCard(ind: index),
            ))
          ),
        ),
      )


        ],
      ),
    );
  }
}

