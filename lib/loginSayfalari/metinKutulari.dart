import 'package:flutter/material.dart';

class Metinkutulari extends StatelessWidget {
  final String name;
  final IconData emoji;
  final controller;
  final bool obscuretext;

  const Metinkutulari(
      {super.key,
      required this.controller,
      required this.emoji,
      required this.name,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          obscureText: obscuretext,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: name,
            suffixIcon: Icon(emoji),
          ),
        ),
      ),
    );
  }
}
