// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:porto1/HomeScreen/Homepage.dart';
import 'package:porto1/SplashScreen/Components/SignIn.dart';
import 'package:porto1/SplashScreen/Components/sentence.dart';
import 'Components/SignUpbutton.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _imageTimer;
  int currentIndex = 0;
  List<String> imagePaths = [
    'assets/images/image2.jpeg',
    'assets/images/image1.jpeg',
    'assets/images/image3.jpeg' // Add more image paths as needed
    // Add more image paths as needed
  ];

  @override
  void initState() {
    super.initState();
    startImageTimer();
  }

  void startImageTimer() {
    const duration = Duration(seconds: 3);
    _imageTimer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
      });
    });
  }

  @override
  void dispose() {
    _imageTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePaths[currentIndex]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.25),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Hometiles(),
                SizedBox(height: 20),
                SignUpButton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
                SizedBox(height: 30),
                SignInbutton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
