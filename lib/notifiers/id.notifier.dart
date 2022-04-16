import 'package:flutter/material.dart';

class IDnotifier with ChangeNotifier {
  String id = '';

  String get getId {
    return id;
  }

  set setName(String name) {
    id = name;
    notifyListeners();
  }
}
