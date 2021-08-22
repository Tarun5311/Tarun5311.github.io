import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_linear_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(label: 'C++', percent: 0.85,),
        AnimatedLinearProgressIndicator(label: 'C', percent: 0.85,),
        AnimatedLinearProgressIndicator(label: 'Java', percent: 0.78,),
        AnimatedLinearProgressIndicator(label: 'python', percent: 0.75,),
        AnimatedLinearProgressIndicator(percent: 0.74, label: 'Dart'),
        AnimatedLinearProgressIndicator(label: 'HTML', percent: 0.73,),
        AnimatedLinearProgressIndicator(percent: 0.73, label: 'Javascript'),
        AnimatedLinearProgressIndicator(percent: 0.70, label: 'CSS'),
      ],
    );
  }
}
