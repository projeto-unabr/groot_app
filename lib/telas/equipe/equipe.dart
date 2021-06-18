import 'package:flutter/material.dart';
import 'package:grrot_application/telas/geral/404.dart';
import 'package:grrot_application/telas/especies/especies.dart';
import 'package:grrot_application/telas/materiais/materiais.dart';
import 'package:grrot_application/telas/tarefas/tarefas.dart';

class Equipe extends StatefulWidget {
  const Equipe({Key key}) : super(key: key);

  @override
  _EquipeState createState() => _EquipeState();
}

class _EquipeState extends State<Equipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69F0AE).withOpacity(1.0),
      appBar: AppBar(
        backgroundColor: Color(0xFF00C853).withOpacity(0.2),
        title: Text('Equipe'),
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                //titulo inicial
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Text(
                      'Konoha',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      '001',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                //professor
                Container(
                  width: 280,
                  height: 60,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                              'https://i.ibb.co/z5WDfWC/Diego.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        'Professor:   Diego',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 15),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //Icones
                Container(
                  width: 300,
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tarefas()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/usuario/tarefas.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Tarefas',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Materiais()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/usuario/materiais.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Materias',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Especie()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/usuario/especies.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Espécies',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page_404()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/usuario/integrante.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Integrantes',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //equipe
            Container(
              width: 500,
              height: 359,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                //lista de alunos
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 280,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                'https://i.ibb.co/ZdWrdC2/Thais.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Thais Cristina',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 0.2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 280,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                'https://i.ibb.co/zQFzG1c/Tiago.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Tiago Costa',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 0.2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 280,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                'https://i.ibb.co/NVrMYT9/Rai.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Rai Brito',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 0.2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 280,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                'https://i.ibb.co/gSbNRsF/Giovane.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Giovane Junio',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 0.2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}