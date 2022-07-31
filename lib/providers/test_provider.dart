import 'package:flutter/material.dart';

class Student extends ChangeNotifier {
  String name = 'momen';
  String lname = 'ali';
  changeName(String newName) {
    name = newName;
    notifyListeners();
  }
}
