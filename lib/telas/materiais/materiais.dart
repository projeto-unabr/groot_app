import 'package:flutter/material.dart';
import 'package:grrot_application/telas/materiais/materiais-cancelados.dart';
import 'package:grrot_application/telas/materiais/materiais-concluidos.dart';
import 'package:grrot_application/telas/materiais/materiais-em-aberto.dart';

class Materiais extends StatefulWidget {
  const Materiais({Key key}) : super(key: key);

  @override
  _MateriaisState createState() => _MateriaisState();
}

class _MateriaisState extends State<Materiais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF00C853).withOpacity(0.4),
        title: Text('Materiais'),
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                //Icones
                Container(
                  width: 300,
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Materiais_Concluidos()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/tarefas/concluida-sem.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Concluídas',
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
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Materiais_Abertos()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/tarefas/aberto-sem.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Em aberto',
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
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Materiais_Cancelados()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/tarefas/cancelada-sem.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Canceladas',
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
            
            Container(
              width: 500,
              child: Column(
              //lista de alunos
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 280,
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Pazinha de Plásico',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'assets/tarefas/concluida.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Minhoqueiro',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 142,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'assets/tarefas/cancelada.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Luvas',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 175,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'assets/tarefas/aberta.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Tesoura',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 165,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'assets/tarefas/concluida.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Mangueira',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'assets/tarefas/cancelada.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
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
              ],
            ),
            ),
          ],
        ),
      ),
    );
  
  }
}
