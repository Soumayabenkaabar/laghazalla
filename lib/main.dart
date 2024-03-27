import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:laghazala/home.dart';
import 'package:laghazala/profil.dart';
import 'package:laghazala/welcome.dart';

void main() async {


  // Appel de runApp() après l'initialisation de Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 116, 162, 215)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
