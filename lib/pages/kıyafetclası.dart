import 'package:firebaseeticaret/models/k%C4%B1yafet.dart';
import 'package:firebaseeticaret/pages/Kiyafetkutulari.dart';
import 'package:flutter/foundation.dart';

class kiyafetcarti extends ChangeNotifier {
  List<kiyafet> KiyafetSpeti = [
    kiyafet(
        dugme: "+", name: "Elbise", resim: "lib/images/pngwing.com (1).png"),
    kiyafet(
        dugme: "+", name: "Elbise", resim: "lib/images/pngwing.com (2).png"),
    kiyafet(dugme: "+", name: "Elbise", resim: "lib/images/pngwing.com.png"),
  ];
  List<Kiyafetkutulari> userrCart = [];

  List<kiyafet> getShoweeList() {
    return KiyafetSpeti;
  }

  List<Kiyafetkutulari> getUsercart() {
    return userrCart;
  }

  void addItenToocart(Kiyafetkutulari kiyafet) {
    userrCart.add(kiyafet);
    notifyListeners();
  }

  void removeItemFrommcart(Kiyafetkutulari kiyafet) {
    userrCart.remove(kiyafet);
    notifyListeners();
  }
}
