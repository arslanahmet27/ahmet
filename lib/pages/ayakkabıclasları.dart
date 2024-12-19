import 'package:firebaseeticaret/models/ayakkab%C4%B1shoesi.dart';
import 'package:firebaseeticaret/pages/anaekranB%C3%BCy%C3%BCkKontainerleri.dart';
import 'package:flutter/material.dart';

class ayakkabiCarti extends ChangeNotifier {
  List<Shoe> ayakkabiSepeti = [
    Shoe(
        dugme: "+",
        fiyat: "1800 tl",
        name: "Nike Air Jardon",
        resim: "lib/images/custom-nike-air-max-97-shoes-by-you4.png"),
    Shoe(
        dugme: "+",
        fiyat: "1900 tl",
        name: "Nike Air Jardon",
        resim: "lib/images/NIKE+AIR+MAX+PULSE1.png"),
    Shoe(
        dugme: "+",
        fiyat: "2000 tl",
        name: "Nike Air Jardon",
        resim: "lib/images/W+NIKE+COURT+VISION+LO+NN3.png"),
  ];

  List<Anaekranbuyukkontainerleri> userCart = [];

  List<Shoe> getShoweList() {
    return ayakkabiSepeti;
  }

  List<Anaekranbuyukkontainerleri> getUsercart() {
    return userCart;
  }

  void addItenTocart(Anaekranbuyukkontainerleri shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromcart(Anaekranbuyukkontainerleri shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
