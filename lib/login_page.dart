import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/accueil.dart';

import 'main.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/accueil.dart';

import 'main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 211, 98, 169),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/back1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Text(
                  "CONNEXION",
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 12, 29, 13),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    height: 7,
                  ),
                ),
              ),
              SizedBox(height: 100),
              DelayedAnimation(
                  delay: 2500,
                  child: Center(
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                    ),
                  )),
              SizedBox(height: 60),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 4500,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 2, 22, 103),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 4500,
            child: TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 4, 17, 70),
                ),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Color.fromARGB(255, 4, 17, 70),
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 90),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 35),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: DelayedAnimation(
                  delay: 6500,
                  child: Text(
                    "SKIP",
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 4, 17, 70),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              child: const Text('LOGIN IN'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(62, 27, 26, 27),
                minimumSize: const Size(200, 60),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenuPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
