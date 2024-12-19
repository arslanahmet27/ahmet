import 'package:firebaseeticaret/loginSayfalari/kayitOl.dart';
import 'package:firebaseeticaret/loginSayfalari/login.dart';
import 'package:flutter/material.dart';

class loginSecme extends StatelessWidget {
  const loginSecme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "lib/images/DALL·E 2024-12-16 10.41.06 - A high-quality, photorealistic image of a denim jacket with a brown corduroy collar hanging on a wooden hanger against a dark black background, minima.webp"),
              fit: BoxFit.fitHeight),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 380,
                ),
                Text(
                  "Star You Shopping Journey Now",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetuer adipisccommo ligula eget dolor aenean",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(
                              loginpage: () {},
                            ),
                          ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Kayitol(
                            registerpage: () {},
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
