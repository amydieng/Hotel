import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'main.dart';
import 'réservation.dart';

void main() => runApp(MyApp());

class ListeReservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste des réservations',
      home: ReservationList(),
    );
  }
}

class ReservationList extends StatelessWidget {
  final List<Reservation> reservations = [
    Reservation(
        nom: 'Dieng',
        prenom: 'Amy',
        telephone: '77859771',
        classe: 'Economique',
        chambre: '23',
        dateNaissance: DateTime(2002, 05, 27),
        dateEntree: DateTime(2023, 3, 18),
        dureeSejour: 3,
        groupeSpecial: true,
        bar: false,
        petitDejeuner: true),
    Reservation(
        nom: 'Cisse',
        prenom: 'Youssou',
        telephone: '774112579',
        classe: 'Standing',
        chambre: '16',
        dateNaissance: DateTime(2002, 5, 10),
        dateEntree: DateTime(2023, 3, 20),
        dureeSejour: 5,
        groupeSpecial: false,
        bar: true,
        petitDejeuner: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des réservations'),
      ),
      body: ListView.builder(
        itemCount: reservations.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(
                '${reservations[index].nom} ${reservations[index].prenom}'),
            subtitle: Text(
                'Classe: ${reservations[index].classe} - Chambre: ${reservations[index].chambre}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Ajouter le code pour afficher les détails de la réservation
            },
          );
        },
      ),
    );
  }
}

class Reservation {
  final String nom;
  final String prenom;
  final String telephone;
  final String classe;
  final String chambre;
  final DateTime dateNaissance;
  final DateTime dateEntree;
  final int dureeSejour;
  final bool groupeSpecial;
  final bool bar;
  final bool petitDejeuner;

  Reservation(
      {required this.nom,
      required this.prenom,
      required this.telephone,
      required this.classe,
      required this.chambre,
      required this.dateNaissance,
      required this.dateEntree,
      required this.dureeSejour,
      required this.groupeSpecial,
      required this.bar,
      required this.petitDejeuner});
}
