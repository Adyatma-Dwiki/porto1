// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:porto1/ItemPage/components/topItemBar.dart';

class TopItem extends StatelessWidget {
  final String imageitem;
  final String title;
  const TopItem({super.key,
  required this.imageitem,
  required this.title,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageitem),
              fit: BoxFit.cover,
            ),
          ),
          ),
          Container(
            height: 320,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.21),
                  Colors.black.withOpacity(0.03),
                ],
              ),
            ),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Column(
                children: const[
              topItemBar(),
                ],
              ),
              Expanded(child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(height: 80),
                  Text(title,
                  style: TextStyle( 
                    color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 5,
                  shadows: [
                    Shadow(
                      color: Colors.white.withOpacity(0.3),
                      blurRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                  )
                  ),
                ],
              ))
            ],
          ),
          ),
      ],
    );
  }
}