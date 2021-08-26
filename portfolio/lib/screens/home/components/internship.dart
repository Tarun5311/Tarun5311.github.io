import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Experience.dart';
import 'internship_card.dart';

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
