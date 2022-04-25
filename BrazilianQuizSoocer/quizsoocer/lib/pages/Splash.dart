import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizsoocer/pages/onBoarding.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4A522),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/Component1.png',
            width: 500,
          ),
          Image.asset(
            'assets/img/Component2.png',
          )
        ],
      ),
    );
  }
}
