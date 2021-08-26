import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'area_info_text.dart';
import 'my_info.dart';
import 'package:portfolio/screens/main/components/skills.dart';
import 'package:portfolio/screens/main/components/knowledges.dart';
import '../../../constants.dart';
import 'package:portfolio/screens/main/components/coding.dart';

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
                  Skills(),
                  SizedBox(height: defaultPadding/2,),
                  Coding(),
                  Knowledges(), 
                  Divider(), 
                  TextButton(
                    onPressed: (){}, 
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          SizedBox(width: defaultPadding/2,),
                          

                        ],
                      ),
                    ),

                  ),
                  Container(
                    color: Color(0xFF24242E),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/github.svg")),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                        
                      ],
                    ),
                  )
                                  
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}

