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

class GestionHotel extends StatelessWidget {
  late Hotel hotel = new Hotel("bouna");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Hotel'),
        backgroundColor: Color.fromARGB(255, 119, 28, 85),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/hotel2.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                  // Code pour gérer l'hôtel
                },
                child: const Text('Infos'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Infos()),
                  );
                  // Code pour gérer les chambres
                },
                child: const Text('Modifier  nom hotel'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.withOpacity(0.5),
                  minimumSize: const Size(200, 60),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ModificationNom(
                              hotel: hotel,
                            )),
                  );
                  // Code pour gérer les clients
                },
                child: const Text('Modifier  Les Tarifs'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 152, 74, 10).withOpacity(0.5),
                  minimumSize: const Size(200, 60),
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ModificationTarif()),
                  );
                  // Code pour gérer les clients
                },
                child: const Text('Réinitialiser hotel'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.withOpacity(0.5),
                  minimumSize: const Size(200, 60),
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Reinitialisation()),
                  );
                  // Code pour gérer les réservations
                },
                child: const Text('Les Couleurs'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(120, 138, 141, 140),
                  minimumSize: const Size(200, 60),
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Code pour quitter l'application
                  Navigator.of(context).pop();
                },
                child: const Text('Quitter'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(120, 241, 8, 8),
                  minimumSize: const Size(200, 60),
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Infos() {}
  Reinitialisation() {}

  GestionChambre() {}

  GestionReservation() {}

  GestionFacture() {}

  GestionClient() {}
}
