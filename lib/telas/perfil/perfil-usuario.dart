import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grrot_application/componentes-cabecalho/interface-aro.dart';
import 'package:grrot_application/telas/mapa/mapa.dart';
import 'editar-perfil-usuario.dart';

class PerfilUsuario extends StatefulWidget {
  @override
  _PerfilUsuarioState createState() => _PerfilUsuarioState();
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Scaffold(
          body: InterfaceAro(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Container(
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/botoes/voltar.png'),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mapa()));
                            },
                            child: null,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/botoes/editar.png'),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditarPerfilUsuario()));
                            },
                            child: null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/usuario/mariaeduarda.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Nome",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Maria Eduarda",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Telefone",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("(xx) xxxx-xxxx"),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "mariaalves0330@aluno.una.br",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Tipo de Usu??rio",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Estudante"),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Registro Acad??mico",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("000 0000"),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Institui????o de Ensino",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Centro Universitario Una"),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Curso",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Sistemas de Informa????o 3?? Periodo"),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Localiza????o",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Belo Horizonte"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.4,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}