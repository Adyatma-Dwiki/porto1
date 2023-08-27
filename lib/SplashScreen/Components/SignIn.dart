// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SignInbutton extends StatelessWidget {
  const SignInbutton ({super.key, required this.onTap});
    final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size;
    return FadeInDown(
      delay: Duration(milliseconds: 1500),
      child: GestureDetector(
        onTap: onTap,
      child: Container(
        height: 50,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    ));
  }
}