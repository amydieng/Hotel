import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/delayed_animation.dart';
import 'package:hotel/social_page.dart';
// ignore: unused_import
import 'package:hotel/main.dart';

// ignore: use_key_in_widget_constructors
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 236, 242),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: SizedBox(
                  height: 500,
                  child: Image.asset('images/grand.jpg'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: SizedBox(
                  height: double.infinity,
                  child: Image.asset('images/hotels-luxe-dubai.jpg'),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  height: 400,
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    "Venir. Relaxer. Profitez d’une bouchée",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 1, 118, 185),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  width: 400,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF576dff),
                    ),
                    child: Text('GET STARTED'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SocialPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
