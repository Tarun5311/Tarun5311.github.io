import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Experience.dart';
import '../../../responsive.dart';

class internshipCard extends StatelessWidget {
  const internshipCard({
    Key? key,
    required this.ind,
  }) : super(key: key);

  final int ind;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobileLarge(context)?300:400,        
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

