import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';

class GeneratePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneratePageState();
}

class GeneratePageState extends State<GeneratePage> {
  String qrData =
      "https://github.com/neon97"; // already generated qr code when the page opens

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo gerador de link QR'),
        backgroundColor: Color(0xFF00C853).withOpacity(0.4),
        actions: <Widget>[],
      ),
      body: Container(
        padding: EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // QrImage(
            //plce where the QR Image will be shown
            //     data: qrData,
            //),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "New QR Link Generator",
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              controller: qrdataFeed,
              decoration: InputDecoration(
                hintText: "Insira seu link ou dados",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: FlatButton(
                padding: EdgeInsets.all(10.0),
                onPressed: () async {
                  if (qrdataFeed.text.isEmpty) {
                    setState(() {
                      qrData = "";
                    });
                  } else {
                    setState(() {
                      qrData = qrdataFeed.text;
                    });
                  }
                },
                child: Text(
                  "Gerar QR",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.green, width: 3.0),
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            )
          ],
        ),
      ),
    );
  }

  final qrdataFeed = TextEditingController();
}