import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Education.dart';

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

