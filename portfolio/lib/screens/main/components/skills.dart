import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:portfolio/components/animated_circular_project_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
      Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        "Skills",
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ),
    
    Row(
      children: [
        Expanded(child: AnimatedCircularProjectIndicator(percent: 0.7, label: 'Flutter',)),
        SizedBox(width: defaultPadding,),
        Expanded(child: AnimatedCircularProjectIndicator(percent: 0.75, label: 'Angular',)),
        SizedBox(width: defaultPadding,),
        Expanded(child: AnimatedCircularProjectIndicator(percent: 0.65, label: 'django',)),
      ],
    ),

      ],
    );
  }
}

