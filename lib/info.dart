import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/gestion_hotel.dart';
import 'main.dart';

void main() => runApp(MyApp());

class Infos {
  final String nom;
  final int nombreNiveaux;
  final List<int> nombreChambresParNiveau;
  final ClasseTypeE classeTypeE;

  Infos({
    required this.nom,
    required this.nombreNiveaux,
    required this.nombreChambresParNiveau,
    required this.classeTypeE,
  });
}

class ClasseTypeE {
  final double tarifNormal;
  final double tarifSpecial;

  ClasseTypeE({
    required this.tarifNormal,
    required this.tarifSpecial,
  });
}

void main() {
  final hotel = Infos(
    nom: 'Le Saloum',
    nombreNiveaux: 0,
    nombreChambresParNiveau: [0],
    classeTypeE: ClasseTypeE(
      tarifNormal: 1200.0,
      tarifSpecial: 12222.0,
    ),
  );

  print('Nom de l\'hôtel: ${hotel.nom}');
  print('Nombre de niveaux: ${hotel.nombreNiveaux}');
  print('Nombre de chambres par niveau: ${hotel.nombreChambresParNiveau}');
  print('Classe Type E - Tarif Normal: ${hotel.classeTypeE.tarifNormal}');
  print('Classe Type E - Tarif Spécial: ${hotel.classeTypeE.tarifSpecial}');
}
