import 'package:flutter/material.dart';

class Hesabim extends StatefulWidget {
  const Hesabim({super.key});

  @override
  State<Hesabim> createState() => _HesabimState();
}

class _HesabimState extends State<Hesabim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Hesabım"),
            ],
          ),
        ),
      ),
    );
  }
}
