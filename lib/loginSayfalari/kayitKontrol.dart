import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseeticaret/pages/anasayfa.dart';
import 'package:firebaseeticaret/loginSayfalari/loginSecme.dart';
import 'package:flutter/material.dart';

class Kayitkontrol extends StatelessWidget {
  const Kayitkontrol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Anasayfa();
          } else {
            return loginSecme();
          }
        },
      ),
    );
  }
}
