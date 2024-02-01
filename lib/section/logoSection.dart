import 'package:flutter/material.dart';

class showLogo extends StatelessWidget {
  const showLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50,right: 100,left: 100),
      padding: EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blueAccent,
          Colors.blue,
          Colors.lightBlueAccent
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blueAccent,
            Colors.blue,
            Colors.lightBlueAccent
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset:const Offset(0, 3)
            )
          ]
        ),
        padding: EdgeInsets.all(20),
        child: Image.asset("assets/image/logo.png",width: 200,height: 200,),
      ),
    );
  }
}