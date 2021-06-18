import 'package:flutter/material.dart';
import 'dart:async';
import 'package:grrot_application/telas/login/tela-login.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaLogin(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fundo/tela-inicial.jpg'),
              fit: BoxFit.cover, //Estende a imagen para preencher o fundo.
            ),
          ),
        ),
      ],
    );
  }
}
