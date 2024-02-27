// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _next();
    super.initState();
  }

  _next() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/splash_pic.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text("Let's start your \nfitness journey",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 4,
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
