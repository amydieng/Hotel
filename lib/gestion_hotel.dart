import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/login_page.dart';
import 'main.dart';
import 'accueil.dart';
import 'info.dart';
import 'réinitialisation.dart';
import 'modifier.dart';
import 'modification_tarif.dart';

void main() => runApp(MyApp());

class GestionHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Le Saloum',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Le Saloum'),
          backgroundColor: Color.fromARGB(120, 170, 66, 139),
        ),
        body: Column(
          children: [
            Image.asset(
              'images/hotels-luxe-dubai.jpg',
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 248, 252, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Infos'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 37, 24, 39),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Modifier Nom Hotel'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 33, 25, 35),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Modifier Tarifs'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 30, 20, 32),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Réinitialiser hotel'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 30, 20, 32),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Quitter'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 18, 14, 19),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
