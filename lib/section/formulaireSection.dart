import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class showFormualire extends StatelessWidget {
  const showFormualire({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20,left: 50,right: 50,top: 20),
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
         InputForm("Email"),
         InputForm("mot de passe"),
        ],
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
            borderSide: BorderSide(color: Colors.blue),
          ),
          labelText: label,
          labelStyle: GoogleFonts.aBeeZee(
            color: Colors.white
          ),
          contentPadding: EdgeInsets.all(15)),
      cursorColor: Colors.blue,
    ),
  );
}