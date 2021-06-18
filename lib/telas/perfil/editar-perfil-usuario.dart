import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grrot_application/componentes-cabecalho/interface-aro.dart';
import 'package:grrot_application/telas/perfil/perfil-usuario.dart';

class EditarPerfilUsuario extends StatefulWidget {
  @override
  _EditarPerfilUsuarioState createState() => _EditarPerfilUsuarioState();
}

class _EditarPerfilUsuarioState extends State<EditarPerfilUsuario> {
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
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
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
                                        builder: (context) => PerfilUsuario()));
                              },
                              child: null),
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
                          "Tipo de Usuário",
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
                          "Registro Acadêmico",
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
                          "Instituição de Ensino",
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
                        Text("Sistemas de Informação 3° Periodo"),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Localização",
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