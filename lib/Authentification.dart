import 'package:composant/section/formulaireSection.dart';
import 'package:composant/section/logoSection.dart';
import 'package:composant/section/textSection.dart';
import 'package:flutter/material.dart';

class Authentification extends StatelessWidget {
  const Authentification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blueAccent,
          Colors.blue,
          Colors.lightBlueAccent
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              showLogo(),
              SizedBox(height: 20,),
              logText(),
              showFormualire()
            ],
          ),
        ),
      ),
    );
  }
}


