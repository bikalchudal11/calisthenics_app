// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calisthenics_app/view/resources/colors.dart';
import 'package:calisthenics_app/view/resources/custom_button.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: secondaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 40,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign to continue",
                style: TextStyle(color: secondaryColor),
              ),
              SizedBox(
                height: 60,
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
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: secondaryColor, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: CustomButton(
                    buttonName: "LOGIN",
                  )),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/createAcc');
                    },
                    child: Text(
                      "create a new account",
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
