// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calisthenics_app/view/resources/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
