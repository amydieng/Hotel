// ignore_for_file: constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:hotel/welcome_page.dart';
import 'package:hotel/login_page.dart';

// ignore: unnecessary_const
const d_red = const Color(0xFFE9717D);

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Royal App',
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
