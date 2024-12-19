import 'package:firebaseeticaret/models/k%C4%B1yafet.dart';
import 'package:firebaseeticaret/pages/Kiyafetkutulari.dart';
import 'package:flutter/foundation.dart';

class kiyafetcarti extends ChangeNotifier {
  List<kiyafet> KiyafetSpeti = [
    kiyafet(
        dugme: "+",
        name: "Elbise",
        resim:
            "lib/images/DALL·E 2024-12-16 10.41.06 - A high-quality, photorealistic image of a denim jacket with a brown corduroy collar hanging on a wooden hanger against a dark black background, minima.webp"),
    kiyafet(
        dugme: "+",
        name: "Elbise",
        resim:
            "lib/images/DALL·E 2024-12-16 10.41.06 - A high-quality, photorealistic image of a denim jacket with a brown corduroy collar hanging on a wooden hanger against a dark black background, minima.webp"),
    kiyafet(
        dugme: "+",
        name: "Elbise",
        resim:
            "lib/images/DALL·E 2024-12-16 10.41.06 - A high-quality, photorealistic image of a denim jacket with a brown corduroy collar hanging on a wooden hanger against a dark black background, minima.webp"),
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
