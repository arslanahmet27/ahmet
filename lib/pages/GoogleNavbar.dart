import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class altbutton extends StatefulWidget {
  void Function(int)? onTabChange;
  altbutton({super.key, required this.onTabChange});

  @override
  State<altbutton> createState() => _altbuttonState();
}

class _altbuttonState extends State<altbutton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: GNav(
          color: Colors.grey.shade700,
          activeColor: Colors.grey.shade900,
          gap: 5,
          onTabChange: (value) => widget.onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Anasayfa",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Sepetim",
            ),
            GButton(
              icon: Icons.person,
              text: "Hesabım",
            ),
            GButton(
              icon: Icons.settings,
              text: "Ayarlar",
            ),
          ],
        ),
      ),
    );
  }
}
