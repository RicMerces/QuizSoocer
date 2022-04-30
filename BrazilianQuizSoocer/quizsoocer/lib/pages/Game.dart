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

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto':
            'O primeiro campeão Brasieiro reconhecido pela CBF,na época torneio conhecido como Taça Brasil foi o time do:',
        'respostas': [
          'Sport',
          'Santos',
          'Bahia',
          'Palmeiras',
        ]
      },
      {
        'texto': 'O Bahia é um time  ',
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
    void _responder() {
      _novaPergunta >= perguntas.length - 1
          ? print('Finish')
          : setState(() {
              _novaPergunta++;
            });
    }

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
