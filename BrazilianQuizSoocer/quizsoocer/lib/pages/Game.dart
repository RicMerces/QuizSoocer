import 'package:flutter/material.dart';
import 'package:quizsoocer/model/Opcoes_model.dart';
import 'package:quizsoocer/model/Questao_model.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _novaPergunta = 0;
  var _somaTotalPts = 0;
  // var alterarCor = false;

  String perguntaAtual = '';

  void _responder() {
    setState(() {
      _novaPergunta++;
      // perguntaAtual = perguntaAtual = _perguntas[_novaPergunta].cast()['texto'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Pergunta5',
        'respostas': [
          'Opcao0er3q1',
          'Opcao0sdf2',
          'Opcao03asd',
          'Opcao0r3e4',
        ]
      },
      {
        'texto': 'Pergunta4',
        'respostas': [
          'Opcao05',
          'Opcao062',
          'Opcao0773',
          'Opcao0884',
        ]
      },
      {
        'texto': 'Pergunta3',
        'respostas': [
          'Opcao0345221',
          'Opcao03452',
          'Opcao05563',
          'Opcao0344',
        ]
      },
      {
        'texto': 'Pergunta2',
        'respostas': [
          'Opcao02342341',
          'Opcao06542',
          'Opcao0uuu3',
          'Opcao04444',
        ]
      },
    ];

    List respostas = [];

    for (var textoResp in perguntas[_novaPergunta].cast()['respostas']) {
      respostas.add(OpcoesModel(textoResp, _responder));
    }

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
              'Pergunta #${_novaPergunta + 1}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Questao(perguntaAtual = perguntas[_novaPergunta].cast()['texto']),
            ...respostas,
          ])
        ],
      ),
    );
  }
}
