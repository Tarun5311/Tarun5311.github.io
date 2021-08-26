import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/constants.dart';
import '../../../responsive.dart';

class AnimatedHomeBanner extends StatelessWidget {
  const AnimatedHomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/Background.jpeg", fit: BoxFit.cover,),
          Container(color: darkColor.withOpacity(0.66),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello There! \nWelcome to my portfolio!',
                  style: Responsive.isDesktop(context) 
                  ? Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                  : Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle1!,
                  child: Row(
                    children: [
                     if(!Responsive.isMobileLarge(context)) 
                        Tag(custom: "<",),
                      if(!Responsive.isMobileLarge(context)) 
                        SizedBox(width: defaultPadding/2,),
                     Text(
                       'I am a '
                     ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "Tech Enthusiast",
                            speed: Duration(milliseconds: 60)
                          ),
                          TyperAnimatedText(
                            "Dance Lover",
                            speed: Duration(milliseconds: 60)
                          ),
                          TyperAnimatedText(
                            "Student Developer",
                            speed: Duration(milliseconds: 60)
                          ),
                          
                        ]
                      ),
                      if(!Responsive.isMobileLarge(context))
                        SizedBox(width: defaultPadding/2,),
                      if(!Responsive.isMobileLarge(context)) 
                        Tag(custom: "</")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Tag extends StatelessWidget {
  const Tag({
    Key? key,
    required this.custom
  }) : super(key: key);

  final String custom;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: custom,
      children: [
        TextSpan(
          text: "TK",
          style: TextStyle(color: primaryColor),
        ),
        TextSpan(
          text: ">"
        )
      ]
    ));
  }
}

