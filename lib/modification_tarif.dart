import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/gestion_hotel.dart';
import 'main.dart';

class ModificationTarif extends StatefulWidget {
  @override
  _ModifierState createState() => _ModifierState();
}

class _ModifierState extends State<ModificationTarif> {
  Map donnEes = {};
  @override
  Widget build(BuildContext context) {
    String nomHotel = donnEes['nomHotel'];
    double nombredeniveau = donnEes['nombre de niveau'];
    double nombredechambreparniveau = donnEes['nombre de chambre par niveau'];
    String ClasseE = donnEes['E'];
    double tarifNormal = donnEes['1200.00'];
    double tarifSpecial = donnEes['12222.00'];
    String ClasseS = donnEes['S'];
    double tarifnormal = donnEes['11111.00'];
    double tarifspecial = donnEes['11111.00'];
    String ClasseA = donnEes['A'];
    double tarifNormal3 = donnEes['11111.00'];
    double tarifSpecial3 = donnEes['11111.00'];

    var lettreInitiale = nomHotel[0];

    return Container();
  }
}
