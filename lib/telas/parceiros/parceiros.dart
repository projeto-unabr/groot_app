import 'package:flutter/material.dart';
import 'package:grrot_application/telas/geral/404.dart';

class Parceiros extends StatefulWidget {
  const Parceiros({Key key}) : super(key: key);

  @override
  _ParceirosState createState() => _ParceirosState();
}

class _ParceirosState extends State<Parceiros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF00C853).withOpacity(0.4),
        title: Text('Parceiros'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    width: 0.5,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    //parceiro
                    Container(
                      width: 280,
                      height: 100,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                  'assets/images/pomar.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '   Pomar BH ',
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    //distancia entre professor e icones

                    //Icones
                    Container(
                      width: 280,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
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
                                          builder: (context) => Page_404()),
                                    );
                                  });
                                },
                                child: Image.asset(
                                  'assets/botoes/whatsapp.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
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
                                  'assets/botoes/phone.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
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
                                  'assets/botoes/instagram.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Page_404()),
                                    );
                                  });
                                },
                                child: Image.asset(
                                  'assets/botoes/facebook.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    width: 0.5,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    //parceiro
                    Container(
                      width: 280,
                      height: 100,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                  'assets/images/duda.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '   Duda ',
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    //distancia entre professor e icones

                    //Icones
                    Container(
                      width: 280,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
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
                                          builder: (context) => Page_404()),
                                    );
                                  });
                                },
                                child: Image.asset(
                                  'assets/botoes/whatsapp.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
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
                                  'assets/botoes/phone.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
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
                                  'assets/botoes/instagram.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Page_404()),
                                    );
                                  });
                                },
                                child: Image.asset(
                                  'assets/botoes/facebook.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    width: 0.5,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    //parceiro
                    Container(
                      width: 280,
                      height: 100,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                  'assets/images/una.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '   Una ',
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    //distancia entre professor e icones

                    //Icones
                    Container(
                      width: 280,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
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
                                          builder: (context) => Page_404()),
                                    );
                                  });
                                },
                                child: Image.asset(
                                  'assets/botoes/whatsapp.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
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
                                  'assets/botoes/phone.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
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
                                  'assets/botoes/instagram.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Page_404()),
                                    );
                                  });
                                },
                                child: Image.asset(
                                  'assets/botoes/facebook.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
