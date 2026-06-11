import 'package:flutter/material.dart';
import 'package:sistema_saude/models/dados_instanciados.dart';
import 'package:sistema_saude/views/tela_inicial.dart';

void main() {
  instanciandoDados();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema ACS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Telainicial(),
    );
  }
}