import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D19CB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                Image.asset('assets/img/Group1.png'),
                const Text(
                  '100 Pontos !!',
                  style: TextStyle(
                      color: Color(0xffF4A522),
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Parabéns você é um expert',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: RichText(
                    text: const TextSpan(
                        text: 'recorde pessoal',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffF4A522),
                        ),
                        children: [
                          TextSpan(
                              text: ' 140 Pontos',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ]),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Reiniciar',
                    style: TextStyle(
                      color: Color(0xff2D19CB),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(295, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
