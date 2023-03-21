import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/gestion_client.dart';

import 'client_service.dart';

class Client extends StatelessWidget {
  ClientService clientService = ClientService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LISTE DES CLIENTS'),
          backgroundColor: Color.fromARGB(120, 170, 66, 139),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AjoutClient()));
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: FutureBuilder(
          future: clientService.listClient(),
          builder: (context, snap) {
            if (snap.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                        '${snap.data![index].prenom} ${snap.data![index].nom}'),
                    subtitle: Text(
                        '${snap.data![index].adresse} ${snap.data![index].telephone}'),
                  );
                },
                itemCount: snap.data!.length,
              );
            }
            return Container();
          },
        ));
  }
}

AjoutClient() {}
