import 'package:animate_do/animate_do.dart';
import 'package:composant/exemple1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Exemple2 extends StatelessWidget {
  const Exemple2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: 1000,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/banner.jpg"),
                      fit: BoxFit.cover)),
            ),
            Text("Your Fast food is open", style: TextStyle(fontSize: 30)),
            Text(
              "10h-23h",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/image/breakfast.svg",
                  height: 150,
                ),
                Expanded(
                  child: Text("Menu café avec Petit croissant et jus d'orange",style:GoogleFonts.adamina(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent
                  ),),
                  flex: 2,
                ),
                Expanded(
                  child: Text(
                    "Menu pizza calzone avec sa ciboulette sur le coté",
                    style:GoogleFonts.adamina(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                    ),
                  ),
                )
              ],
            ),
            Text("Nous avons un, nouveau menu qui arrive"),
            Text("Nous avons un, nouveau menu qui arrive"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.local_hospital_outlined),
                    Text("Hospital")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.airplanemode_off_outlined,
                      color: Colors.blue,
                    ),
                    Text("Aeroport")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: Colors.green,
                    ),
                    Text("Ecole")
                  ],
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SvgPicture.asset(
                "assets/image/breakfast.svg",
                height: 150,
              ),
              SvgPicture.asset(
                "assets/image/breakfast.svg",
                height: 150,
              ),
            ]),
            InputForm("Contact"),
            InputForm("Email"),
            ElevatedButton(onPressed: () {}, child: Text("Enregistrer vous ")),
            ElevatedButton(onPressed: () {}, child: Text("Voir plus")),
            ShakeX(animate: true,child: const Square(),infinite: true,),
            ShakeY(animate: true,child: const Square(),duration: Duration(minutes: 10),infinite: true,),
            FadeInLeft(animate: true,child: const Square(),curve: Curves.bounceIn,duration: Duration(minutes: 10),),
            FadeInDown(animate: true,child: const Square(),curve: Curves.bounceIn,duration: Duration(seconds: 10),),
            FadeInUp(animate: true,child: const Square(),curve: Curves.bounceIn,duration: Duration(seconds: 10),),

            ShakeY(child: Text("bouge bien "),infinite: true,)
          ],
        ),
      ),
    );
  }
}

Widget InputForm(String label) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 10),
    child: TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.redAccent),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.redAccent),
          contentPadding: EdgeInsets.all(15)),
      cursorColor: Colors.redAccent,
    ),
  );
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: const Color(0xff67549B),
    );
  }
}
