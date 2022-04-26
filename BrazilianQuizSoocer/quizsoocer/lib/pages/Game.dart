import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/img/Component3.png',
            ),
          ),
          const Text(
            'Pergunta #01',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 30),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ?',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Pergunta 01',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      fixedSize: Size(295, 50),
                      backgroundColor: Color(0xffF4A522),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Pergunta 02',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      fixedSize: Size(295, 50),
                      backgroundColor: Color(0xffF4A522),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Pergunta 03',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      fixedSize: Size(295, 50),
                      backgroundColor: Color(0xffF4A522),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Pergunta 04',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      fixedSize: Size(295, 50),
                      backgroundColor: Color(0xffF4A522),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
