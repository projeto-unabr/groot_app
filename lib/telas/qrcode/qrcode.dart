import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grrot_application/telas/qrcode/scanner-qrcode.dart';

import 'gerator-qrcode.dart';

class Qrcode extends StatefulWidget {
  @override
  _QrcodeState createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr Code"),
        backgroundColor: Color(0xFF00C853).withOpacity(0.4),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/gif/qrcoderotation.gif'),
            flatButton("Escanear", ScanPage()),
            SizedBox(
              height: 20.0,
            ),
            flatButton("Gerar", GeneratePage()),
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: 3.0),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
