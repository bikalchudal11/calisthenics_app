// ignore_for_file: prefer_const_constructors

import 'package:calisthenics_app/view/screens/create_account_page.dart';
import 'package:calisthenics_app/view/screens/home_screen.dart';
import 'package:calisthenics_app/view/screens/log_in_screen.dart';
import 'package:calisthenics_app/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'OftenUsedFont'),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LogInScreen(),
        '/createAcc': (context) => CreateAccountPage(),
      },
    );
  }
}
