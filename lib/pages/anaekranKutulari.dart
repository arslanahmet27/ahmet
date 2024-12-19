import 'package:flutter/material.dart';

class Anaekrankutulari extends StatelessWidget {
  final String resim;

  const Anaekrankutulari({super.key, required this.resim});

  @override
  Widget build(BuildContext context) {
    double _screenwdith = MediaQuery.of(context).size.width;
    return Container(
      height: 62,
      width: _screenwdith * 0.17,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(resim), fit: BoxFit.cover),
      ),
    );
  }
}
