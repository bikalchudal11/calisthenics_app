// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, prefer_const_constructors
import 'package:calisthenics_app/view/resources/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String buttonName;
  CustomButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
