// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class JudulKategori extends StatelessWidget {
  final String title;
  final String textbutton;

  const JudulKategori({super.key
  ,
    required this.title,
    required this.textbutton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInLeft(child: Text(title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            shadows: [
              Shadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(0, 0),
              ),
            ],
          ),
          ),
          ),
          FadeInRight(child: Text(textbutton,
          style:  TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),))
        ],
      )
    );
  }
}