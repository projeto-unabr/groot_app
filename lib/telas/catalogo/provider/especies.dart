import 'package:flutter/material.dart';
import 'package:grrot_application/telas/catalogo/data/dummy_especies.dart';
import 'package:grrot_application/telas/catalogo/models/dados-especies.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};
  //Criar um clone
  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
