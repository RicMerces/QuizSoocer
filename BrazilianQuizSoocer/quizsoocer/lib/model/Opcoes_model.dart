import 'package:flutter/material.dart';

class OpcoesModel extends StatelessWidget {
  final String resposta;
  final void Function() selected;

  OpcoesModel(this.resposta, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: TextButton(
          onPressed: selected,
          child: Text(
            resposta,
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
    );
  }
}
