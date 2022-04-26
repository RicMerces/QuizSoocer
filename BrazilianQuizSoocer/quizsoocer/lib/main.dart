import 'package:flutter/material.dart';
import 'package:quizsoocer/pages/Game.dart';
import 'package:quizsoocer/pages/Splash.dart';

void main() {
  runApp(Quizsoocer());
}

class Quizsoocer extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Quizsoocer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Game(),
    );
  }
}
