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
          {'texto': 'Vasco', 'nota': 0},
          {'texto': 'Santos', 'nota': 0},
          {'texto': 'Bahia', 'nota': 10},
          {'texto': 'Sport', 'nota': 0},
        ]
      },
      {
        'texto':
            'O primeiro campeão Brasieiro reconhecido pela CBF,na época torneio conhecido como Taça Brasil foi o time do:',
        'respostas': [
          {'texto': 'Vasco', 'nota': 0},
          {'texto': 'Santos', 'nota': 0},
          {'texto': 'Bahia', 'nota': 10},
          {'texto': 'Sport', 'nota': 0},
        ]
      },
      {
        'texto':
            'O primeiro campeão Brasieiro reconhecido pela CBF,na época torneio conhecido como Taça Brasil foi o time do:',
        'respostas': [
          {'texto': 'Vasco', 'nota': 0},
          {'texto': 'Santos', 'nota': 0},
          {'texto': 'Bahia', 'nota': 10},
          {'texto': 'Sport', 'nota': 0},
        ]
      },
      {
        'texto':
            'O primeiro campeão Brasieiro reconhecido pela CBF,na época torneio conhecido como Taça Brasil foi o time do:',
        'respostas': [
          {'texto': 'Vasco', 'nota': 0},
          {'texto': 'Santos', 'nota': 0},
          {'texto': 'Bahia', 'nota': 10},
          {'texto': 'Sport', 'nota': 0},
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

    List<Map<String, Object>> respostas =
        perguntas[_novaPergunta].cast()['respostas'];

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
          Column(
            children: [
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
              ...respostas
                  .map((x) => OpcoesModel(x['texto'].toString(), _responder))
                  .toList(),
            ],
          )
        ],
      ),
    );
  }
}
