import 'package:flutter/material.dart';
import 'package:tictactoez/screens/selecionarPersonagem.dart';

import 'screens/menu.dart';

void main() {
  runApp(tictactoez());
}

class tictactoez extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe Z',
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: SelecionarPersonagem(),
    );
  }
}