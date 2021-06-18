import 'package:flutter/material.dart';
import 'package:grrot_application/telas/geral/404.dart';
import 'package:grrot_application/telas/catalogo/components/especies.dart';
import 'package:grrot_application/telas/catalogo/data/dummy_especies.dart';

class Catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00C853).withOpacity(0.4),
        title: Text('Catálago de Especies'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page_404()));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => EspecieTile(users.values.elementAt(i)),
      ),
    );
  }
}
