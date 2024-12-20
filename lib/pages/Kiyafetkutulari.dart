import 'package:firebaseeticaret/models/k%C4%B1yafet.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Kiyafetkutulari extends StatelessWidget {
  kiyafet Kiyafet;
  Kiyafetkutulari({super.key, required this.Kiyafet});

  @override
  Widget build(BuildContext context) {
    double _screenheight = MediaQuery.of(context).size.height;
    double _screenwdith = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: _screenheight * 0.4,
        width: _screenwdith * 0.6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(Kiyafet.resim),
              Text(Kiyafet.name),
              Text(Kiyafet.dugme),
            ],
          ),
        ),
      ),
    );
  }
}
