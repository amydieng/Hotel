import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';

import 'main.dart';
import 'accueil.dart';

class GestionClient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Client'),
        backgroundColor: Color.fromARGB(120, 170, 66, 139),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                  // Code pour gérer l'hôtel
                },
                child: Text('LISTES Des Clients Sortants'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GestionClient()),
                  );
                  // Code pour gérer les chambres
                },
                child: Text('LISTE Des Clients Entrants '),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                  // Code pour gérer les clients
                },
                child: Text('Suppression Clients'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                  // Code pour gérer les réservations
                },
                child: Text('Quitter'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
