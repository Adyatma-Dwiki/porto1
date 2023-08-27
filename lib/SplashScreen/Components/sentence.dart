// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';

class Hometiles extends StatelessWidget {
  const Hometiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(child: Row(
          children: [
            Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
        SizedBox(height: 20),
            FadeInDown(
              child: Text(
                "See our brand new collection of fashion",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1  ,
                ),
              ),
            ),  
      ],
    );
  }
}