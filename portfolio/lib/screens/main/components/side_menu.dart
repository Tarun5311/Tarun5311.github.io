import 'package:flutter/material.dart';
import 'my_info.dart';
import '../../../constants.dart';

class sidemenu extends StatelessWidget {
  const sidemenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: 'Residence', text: 'India'),
                  AreaInfoText(title: 'City', text: 'Bangalore'),
                  AreaInfoText(title: 'Age', text: '19'),
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
              ),
            )
          ),
        ],
      ),
    );
  }
}

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

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Colors.white),
          ),
         Text(
            '$text',
          ),

        ],
      ),
    );
  }
}

