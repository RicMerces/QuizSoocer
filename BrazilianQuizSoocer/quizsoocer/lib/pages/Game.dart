import 'package:flutter/material.dart';
import 'package:quizsoocer/model/Questao_model.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _pergunta = 0;
  var _somaTotalPts = 0;

  String perguntaAtual = '';

  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Pergunta',
      'respostas': [
        {'texto': 'Opcao01', 'nota': 10},
        {'texto': 'Opcao02', 'nota': 12},
        {'texto': 'Opcao03', 'nota': 14},
        {'texto': 'Opcao04', 'nota': 16},
      ]
    },
  ];

  void aPergunta() {}

  void perguntaRespondida() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xff2D19CB),
                        size: 36,
                      )))
            ],
          ),
          Column(children: [
            Center(
              child: Image.asset(
                'assets/img/Component3.png',
              ),
            ),
            Text(
              'Pergunta #${_pergunta + 1}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Questao(perguntaAtual = perguntas[_pergunta].cast()['texto']),
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
            ),
          ])
        ],
      ),
    );
  }
}
