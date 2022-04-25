import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/img/Component3.png'),
          ),
          const Text(
            'Bem vindo(a) a versão demo',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 40),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum rhoncus at lectus quis tempor. Phasellus suscipit, ante at venenatis porta, velit felis euismod massa, ',
              style: TextStyle(color: Color(0xff979797), fontSize: 18),
            ),
          ),
          TextButton(
            onPressed: () {
              print('foi');
            },
            child: const Text(
              'iniciar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            style: TextButton.styleFrom(
                backgroundColor: Color(0xff2D19CB),
                fixedSize: Size(210, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          )
        ],
      ),
    ));
  }
}
