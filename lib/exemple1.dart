import 'dart:io';
import 'package:flutter/material.dart';

class Exemple1 extends StatelessWidget {
  const Exemple1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material app bar"),
        elevation: 3,
      ),
      body: const Center(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.greenAccent),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({super.key, required this.image, required this.weight, required this.height});
  final String image;
  final double weight;
  final double height;



  @override
  Widget build(BuildContext context) {
    return Image.asset(image,
    height:height ,
    width: weight,);
  }
}

class ShowIcon extends StatelessWidget {
  const ShowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.abc_rounded,size: 180,);
  }
}
class ShowButton extends StatelessWidget {

  const ShowButton({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
    }, child: Text(label));
  }
}
 



