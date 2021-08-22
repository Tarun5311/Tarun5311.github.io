import 'package:flutter/material.dart';
import '../constants.dart';


class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percent,
    required this.label
  }) : super(key: key);


  final double percent;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percent),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                ),
              ],
            ),
            SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
      ),
          ],
        ),
      ),
    );
  }
}

