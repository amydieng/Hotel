import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/login_page.dart';
import 'package:hotel/gestion_hotel.dart';
import 'main.dart';
import 'package:hotel/facture.dart';
import 'package:hotel/réservation.dart';
import 'package:hotel/statistique.dart';
import 'package:hotel/gestion_client.dart';
import 'package:hotel/gestion_chambre.dart';

class MainMenuPage extends StatelessWidget {
  final List ModuleList = [
    {
      'icon': Icons.hotel,
      'color': Color.fromARGB(255, 59, 91, 63),
      'title': 'Gestion Hotel',
      'link': GestionHotel()
    },
    {
      'icon': Icons.room,
      'color': Color.fromARGB(255, 5, 28, 40),
      'title': 'Gestion Chambre',
      'link': GestionChambre()
    },
    {
      'icon': Icons.person,
      'color': Color.fromARGB(255, 88, 59, 91),
      'title': 'Gestion Client',
      'link': GestionClient()
    },
    {
      'icon': Icons.airplane_ticket,
      'color': Colors.red.shade400,
      'title': 'Gestion Réservation',
      "link": GestionReservation()
    },
    {
      'icon': Icons.file_copy_sharp,
      'color': Color.fromARGB(255, 105, 94, 93),
      'title': 'Gestion Facture',
      "link": GestionFacture()
    },
    {
      'icon': Icons.query_stats,
      'color': Color.fromARGB(255, 54, 41, 126),
      'title': 'Gestion Statistique',
      "link": GestionStatistique()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
        backgroundColor: Color.fromARGB(120, 170, 66, 139),
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/faire.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView.builder(
              itemCount: ModuleList.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        margin: const EdgeInsets.fromLTRB(10, 10.0, 10.0, 10.0),
                        child: ElevatedButton(
                          child: Icon(
                            ModuleList[index]['icon'] as IconData?,
                            size: 50,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  ModuleList[index]['color'])),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ModuleList[index]['link']),
                          ),
                        )),
                    Column(
                      children: [
                        Text(ModuleList[index]['title']),
                      ],
                    )
                  ],
                );
              },
            )),
      ),
    );
  }
}
