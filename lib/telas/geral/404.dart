import 'package:flutter/material.dart';

class Page_404 extends StatelessWidget {
  const Page_404({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 0.9,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Image.asset('assets/images/404.png'),
          ),
        ),
      ),
    );
  }
}
