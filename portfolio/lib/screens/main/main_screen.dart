import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: sidemenu()
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}

class sidemenu extends StatelessWidget {
  const sidemenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.23,
            child: Container(
              color: Color(0xFF242430),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(flex: 2),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/Profile.jpeg"),
                  ),
                  Spacer(),
                  Text(
                    'Anumolu Tarun Kumar',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    '3rd year IMtech CSE student at \n IIITBangalore',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      height: 1.5,
                    )
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}