import 'package:firebaseeticaret/models/ayakkab%C4%B1shoesi.dart';
import 'package:firebaseeticaret/models/k%C4%B1yafet.dart';
import 'package:firebaseeticaret/pages/Kiyafetkutulari.dart';
import 'package:firebaseeticaret/pages/anaekranB%C3%BCy%C3%BCkKontainerleri.dart';
import 'package:firebaseeticaret/pages/anaekranKutulari.dart';
import 'package:firebaseeticaret/pages/ayakkab%C4%B1claslar%C4%B1.dart';
import 'package:firebaseeticaret/pages/k%C4%B1yafetclas%C4%B1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Anaekran extends StatefulWidget {
  const Anaekran({super.key});

  @override
  State<Anaekran> createState() => _AnaekranState();
}

class _AnaekranState extends State<Anaekran> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ayakkabiCarti>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Ara",
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "En Popüler Ürünler",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Anaekrankutulari(
                            resim:
                                "lib/images/depositphotos_200004468-stock-photo-male-casual-style-guy-white.jpg",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Anaekrankutulari(
                            resim: "lib/images/images (1).jpg",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Anaekrankutulari(
                            resim: "lib/images/images.jpg",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Anaekrankutulari(
                            resim: "lib/images/indir (1).jpg",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Anaekrankutulari(
                            resim:
                                "lib/images/DALL·E 2024-12-16 10.41.06 - A high-quality, photorealistic image of a denim jacket with a brown corduroy collar hanging on a wooden hanger against a dark black background, minima.webp",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Anaekrankutulari(
                            resim:
                                "lib/images/custom-nike-air-max-97-shoes-by-you4.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Anaekrankutulari(
                            resim: "lib/images/NIKE+AIR+MAX+PULSE1.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 433,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoweList()[index];
                    return Anaekranbuyukkontainerleri(shoe: shoe);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Consumer<kiyafetcarti>(
                builder: (context, value, child) => Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      kiyafet Kiyafet = value.getShoweeList()[index];
                      return Kiyafetkutulari(Kiyafet: Kiyafet);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
