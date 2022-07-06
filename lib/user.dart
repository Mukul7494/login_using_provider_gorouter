import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  String email = "";
  String password = "";

  void signIn(String email, String password) {
    email = email;
    password = password;
    notifyListeners();
  }
}
