import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'main.dart';
import 'dart:async';

import 'package:flutter/material.dart';

class Hotel {
  String name;

  Hotel(this.name);
}

class ModificationNom extends StatefulWidget {
  final Hotel hotel;

  ModificationNom({Key? key, required this.hotel}) : super(key: key);

  @override
  _ModificationNomState createState() => _ModificationNomState();
}

class _ModificationNomState extends State<ModificationNom> {
  final _formKey = GlobalKey<FormState>();
  late String _name;

  @override
  void initState() {
    super.initState();
    _name = widget.hotel.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'hôtel'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: widget.hotel.name,
                decoration: InputDecoration(
                  labelText: 'Radisson',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Le nom de l\'hôtel est requis.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    widget.hotel.name = _name;
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Enregistrer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
