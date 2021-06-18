import 'package:flutter/material.dart';
import 'package:grrot_application/telas/catalogo/models/dados-especies.dart';

class EspecieTile extends StatelessWidget {
  final User user;

  const EspecieTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons
                .nature)) // Caso não exista imagem da especie vie NetworkImage, ele chamara um avatar.
        : CircleAvatar(
            backgroundImage: NetworkImage(
                user.avatarUrl)); //Chama o avatar da especie via NetworlImage
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.black26,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.black26,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}