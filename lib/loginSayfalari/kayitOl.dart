import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseeticaret/loginSayfalari/login.dart';
import 'package:firebaseeticaret/loginSayfalari/metinKutulari.dart';
import 'package:flutter/material.dart';

class Kayitol extends StatefulWidget {
  final VoidCallback registerpage;
  const Kayitol({super.key, required this.registerpage});

  @override
  State<Kayitol> createState() => _KayitolState();
}

class _KayitolState extends State<Kayitol> {
  @override
  Widget build(BuildContext context) {
    final _mailcontroller = TextEditingController();
    final _sifrecontroller = TextEditingController();
    final _adcontroller = TextEditingController();
    double _screenwith = MediaQuery.of(context).size.width;
    @override
    void dispose() {
      _mailcontroller.dispose();
      _sifrecontroller.dispose();
      _adcontroller.dispose();
      super.dispose();
    }

    Future kayittol() async {
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _mailcontroller.text, password: _sifrecontroller.text);
      Navigator.pop(context);
    }

    Future addtocart(
      String name,
      String mail,
    ) async {
      await FirebaseFirestore.instance.collection("users").add(
        {
          "adiniz": name,
          "mail adresiniz": mail,
        },
      );
      addtocart(
        _adcontroller.text.trim(),
        _mailcontroller.text.trim(),
      );
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "Create an account so you can order you favorite products easily and quickly.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Metinkutulari(
                  controller: _adcontroller,
                  emoji: Icons.person,
                  name: "Adınız:",
                  obscuretext: false),
              SizedBox(
                height: 20,
              ),
              Metinkutulari(
                  controller: _mailcontroller,
                  emoji: Icons.mail,
                  name: "Email:",
                  obscuretext: false),
              SizedBox(
                height: 20,
              ),
              Metinkutulari(
                  controller: _sifrecontroller,
                  emoji: Icons.lock_open_outlined,
                  name: "Password:",
                  obscuretext: true),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: kayittol,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.orange.shade800,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Or Continue With",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: _screenwith * 0.42,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.red.shade700,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.g_mobiledata_outlined,
                            size: 55,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: _screenwith * 0.42,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Icon(
                              Icons.facebook,
                              size: 40,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(
                            loginpage: () {},
                          ),
                        ),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Already Have An Account?",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(text: "  "),
                          TextSpan(
                            text: "Login Now",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
