import 'package:flutter/material.dart';

class Exemple3 extends StatelessWidget {
  const Exemple3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowImage(),
            ShowText(),
            ShowTextLog(),
            ShowTextFormField(),
            ShowTextFormField2(),

          ],
        ),
      ),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/image/log.jpg"));
  }
}

class ShowText extends StatelessWidget {
  const ShowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("FlutterLogin");
  }
}

class ShowTextLog extends StatelessWidget {
  const ShowTextLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Page de connexion Flutter");
  }
}
class ShowTextFormField extends StatelessWidget {
  const ShowTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.people),
        hintText: "Pseudo"
      ),
    );
  }
}

class ShowTextFormField2 extends StatelessWidget {
  const ShowTextFormField2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(Icons.lock),
          hintText: "Mot de passe"
      ),
    );
  }
}





