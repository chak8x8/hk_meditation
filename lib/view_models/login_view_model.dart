import 'package:flutter/material.dart';
import 'package:hk_meditaiton/user.dart';

class LoginViewModel{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  void userChecking() {
    if (emailController.text.contains('@') && (emailController.text.isNotEmpty) && (passwordController.text.isNotEmpty)) {
      User temporayUser = User(email: emailController.text, password: passwordController.text);
      print('Email: ${temporayUser.email}; Password: ${temporayUser.password}');
    } else {
      print('it is wrong');
    }
  }

  String receive() {
    return 'Login';
  }
}
