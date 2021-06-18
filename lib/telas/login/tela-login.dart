import 'package:flutter/material.dart';
import 'package:grrot_application/componentes-cabecalho/interface-cabecalho-rodape.dart';
import 'package:grrot_application/telas/equipe/equipe.dart';
import 'package:grrot_application/telas/geral/404.dart';
import 'package:grrot_application/telas/mapa/mapa.dart';
import 'package:grrot_application/telas/cadastro-usuario/cadastro-usuario.dart';


class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  String email = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: InterfaceCabecalhoRodape(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/botoes/mundo.png'),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page_404()));
                    },
                    child: null,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.18,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 53),
                child: TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "E-mail"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 53),
                child: TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  decoration: InputDecoration(labelText: "Senha"),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/botoes/entrar.png'),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (email == 'eduarda@aluno.com' && senha == '123') {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Mapa()));
                      } else {
                        print('Atenção! E-mail ou senha estão errados!');
                      }
                    },
                    child: null,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Container(
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CadastroUsuario()))
                  },
                  child: Container(
                    child: Text(
                      'Ainda não possui a sua conta?   Cadastre-se',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0x8A000000),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
