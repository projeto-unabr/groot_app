import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grrot_application/componentes-cabecalho/interface-rodape.dart';
import 'package:grrot_application/telas/mapa/mapa.dart';
import 'cadastro-usuario.dart';

class CadastroUsuario2 extends StatefulWidget {
  @override
  _CadastroUsuario2State createState() => _CadastroUsuario2State();
}

class _CadastroUsuario2State extends State<CadastroUsuario2> {
  bool aluno = true;
  bool professor = false;
  String instituicaoEsino;
  String curso;
  String semestre;
  String registroAcademico;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Scaffold(
          body: InterfaceRodape(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/botoes/informAcademica.png'),
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CadastroUsuario()));
                          },
                          child: null),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Stack(
                    children: [
                      Center(
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                            child: CircleAvatar(
                              radius: size.width * 0.14,
                              backgroundColor: Colors.grey[400].withOpacity(
                                0.4,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Checkbox(
                              value: aluno,
                              onChanged: (bool value) {
                                setState(() {
                                  aluno = value;
                                });
                              })
                        ],
                      ),
                      Text("Aluno"),
                      Column(
                        children: [
                          Checkbox(
                              value: professor,
                              onChanged: (bool value) {
                                setState(() {
                                  professor = value;
                                });
                              })
                        ],
                      ),
                      Text("Professor"),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: "Instituição"),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 53),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: "Curso"),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 53),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: "Semestre"),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 53),
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: "Registro Acadêmico"),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                    child: Container(
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/botoes/salvar.png'),
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mapa()));
                          },
                          child: null),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Center(
                    child: Container(
                      child: Container(
                        child: Text('2 de 2'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
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