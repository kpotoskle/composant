import 'package:composant/Authentification.dart';
import 'package:composant/exemple1.dart';
import 'package:composant/exemple2.dart';
import 'package:composant/exemple3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Authentification(),
    );
  }
}


