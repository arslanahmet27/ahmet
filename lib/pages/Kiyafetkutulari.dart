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
              Image.asset(
                Kiyafet.resim,
                width: _screenwdith * 0.40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(Kiyafet.name),
                  ),
                  Container(
                    width: _screenwdith * 0.15,
                    height: _screenheight * 0.073,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20))),
                    child: Center(
                      child: Text(
                        Kiyafet.dugme,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
