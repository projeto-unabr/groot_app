import 'package:flutter/material.dart';

class Groot {
  String imageUrl;
  String title;
  String description;
  int price;
  double rating;

  Groot({this.description, this.imageUrl, this.price, this.rating, this.title});
}

final List<Groot> groots = [
  Groot(
    imageUrl: 'assets/images/arvore.png',
    title: 'Nome Arvore',
    description: 'Descrição...',
  ),
  Groot(
    imageUrl: 'assets/images/arvore.png',
    title: 'Nome Arvore',
    description: 'Descrição...',
  ),
  Groot(
    imageUrl: 'assets/images/arvore.png',
    title: 'Nome Arvore',
    description: 'Descrição...',
  ),
  Groot(
    imageUrl: 'assets/images/arvore.png',
    title: 'Nome Arvore',
    description: 'Descrição...',
  )
];

class Especie extends StatefulWidget {
  static final String path = "lib/src/pages/hotel/hotelbooking.dart";

  @override
  _EspecieState createState() => _EspecieState();
}

class _EspecieState extends State<Especie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00C853).withOpacity(0.4),
        title: Text('Especies'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 10,
                  width: 10,
                )
              ],
            ),
          ),
          SizedBox(height: 10.0), //distancia de quadrad
          Column(
            children: <Widget>[
              //distancia entre os quadrados
              _hotelPackage(0),
              SizedBox(height: 20),
              _hotelPackage(1),
              SizedBox(height: 20),
              _hotelPackage(2),
              SizedBox(height: 20),
              _hotelPackage(3),
            ],
          )
        ],
      ),
    );
  }
}

_hotelPackage(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: 130, //altura do quadrado
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(103, 207, 134, 5.2),
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
          )
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: 130, //altura da imagem
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: AssetImage(groots[index].imageUrl),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 25,
                  width: 50,
                ),
                Text(
                  groots[index].title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  groots[index].description,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}