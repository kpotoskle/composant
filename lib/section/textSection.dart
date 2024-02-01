import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class logText extends StatelessWidget {
  const logText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Flutter",style: GoogleFonts.exo(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40 )),
        Text("Login",style: GoogleFonts.exo(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 40 ),),
      ],
    );
  }
}
