import 'package:flutter/material.dart';
import 'package:grrot_application/telas/materiais/materiais-cancelados.dart';
import 'package:grrot_application/telas/materiais/materiais-concluidos.dart';
import 'package:grrot_application/telas/materiais/materiais.dart';

 class Materiais_Abertos extends StatefulWidget {
   const Materiais_Abertos({ Key key }) : super(key: key);
 
   @override
   _Materiais_AbertosState createState() => _Materiais_AbertosState();
 }
 
 class _Materiais_AbertosState extends State<Materiais_Abertos> {
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF00C853).withOpacity(0.4),
        leading: IconButton( 
          icon: Icon(Icons.arrow_back),
          onPressed: () {
             Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Materiais()),
                      );
          }
        ),
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
                              'assets/tarefas/aberta-com.png',
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
                        'Luvas',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 170,
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

              ],
            ),
            ),
          ],
        ),
      ),
    );
  
   }
 }