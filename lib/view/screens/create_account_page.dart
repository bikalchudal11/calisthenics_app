// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:calisthenics_app/view/resources/colors.dart';
import 'package:calisthenics_app/view/resources/custom_button.dart';

import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: secondaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor),
              ),
              Text("Create a new account"),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: secondaryColor,
                    ),
                    labelText: "Username",
                    labelStyle: TextStyle(color: secondaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor, // Border color when focused
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: secondaryColor,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(color: secondaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor, // Border color when focused
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android_rounded,
                      color: secondaryColor,
                    ),
                    labelText: "Phone",
                    labelStyle: TextStyle(color: secondaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor, // Border color when focused
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                ),
                child: TextField(
                  obscureText: _obsecureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: secondaryColor,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obsecureText = !_obsecureText;
                        });
                      },
                      child: Icon(
                        _obsecureText ? Icons.visibility : Icons.visibility_off,
                        color: secondaryColor,
                      ),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: secondaryColor),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: secondaryColor,
                    )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor, // Border color when focused
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                ),
                child: TextField(
                  obscureText: _obsecureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: secondaryColor,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obsecureText = !_obsecureText;
                        });
                      },
                      child: Icon(
                        _obsecureText ? Icons.visibility : Icons.visibility_off,
                        color: secondaryColor,
                      ),
                    ),
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: secondaryColor),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: secondaryColor,
                    )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor, // Border color when focused
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                buttonName: "CREATE ACCOUNT",
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have a account? "),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: secondaryColor, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
