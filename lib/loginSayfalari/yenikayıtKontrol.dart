import 'package:firebaseeticaret/loginSayfalari/kayitOl.dart';
import 'package:firebaseeticaret/loginSayfalari/login.dart';
import 'package:flutter/material.dart';

class Yenikayitkontrol extends StatefulWidget {
  const Yenikayitkontrol({super.key});

  @override
  State<Yenikayitkontrol> createState() => _YenikayitkontrolState();
}

class _YenikayitkontrolState extends State<Yenikayitkontrol> {
  bool showLoginPage = true;
  void tooglescreen() {
    setState(
      () {
        showLoginPage = !showLoginPage;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(loginpage: tooglescreen);
    } else {
      return Kayitol(registerpage: tooglescreen);
    }
  }
}
