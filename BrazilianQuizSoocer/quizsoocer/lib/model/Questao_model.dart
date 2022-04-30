import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 30),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 17,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
