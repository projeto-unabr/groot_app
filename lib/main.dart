import 'package:flutter/material.dart';
import 'package:grrot_application/telas/geral/telal-inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groot',
      debugShowCheckedModeBanner: false,
      home:
          TelaInicial(), // Direcionar a primeira tela para a tela "Tela Inicial."
    );
  }
}
