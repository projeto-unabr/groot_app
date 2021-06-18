// Definar o layout padrão para o cabeçalho e roda pé ao mesmo tempo.
import 'package:flutter/material.dart';

class InterfaceRodape extends StatelessWidget {
  final Widget child;

  const InterfaceRodape({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 30,
            right: 30,
            bottom: 0,
            child: Image.asset(
              "assets/layout/aro.png",
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 65,
            child: Image.asset(
              "assets/layout/rodape.png",
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
          child
        ],
      ),
    );
  }
}
