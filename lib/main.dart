import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseeticaret/loginSayfalari/kayitKontrol.dart';
import 'package:firebaseeticaret/pages/ayakkab%C4%B1claslar%C4%B1.dart';
import 'package:firebaseeticaret/pages/k%C4%B1yafetclas%C4%B1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ayakkabiCarti(),
        ),
        ChangeNotifierProvider(
          create: (context) => kiyafetcarti(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Kayitkontrol(),
      ),
    );
  }
}
