import 'package:flutter/material.dart';

import 'package:portfolio/constants.dart';

class AnimatedCircularProjectIndicator extends StatelessWidget {
  const AnimatedCircularProjectIndicator({
    Key? key,
    required this.percent,
    required this.label
  }) : super(key: key);

  final double percent;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percent), 
            duration: defaultDuration, 
            builder: (context, double value, child) => 
              Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    backgroundColor: darkColor,
                    color: primaryColor,
                  ),
                  Center(
                    child: Text(
                      (value * 100).toInt().toString() + "%", 
                      style: Theme.of(context).textTheme.subtitle1
                    ),
                  ),
                ],
              ),
          
          ),
        ),
        SizedBox(height: defaultPadding/2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

