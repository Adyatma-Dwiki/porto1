// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:porto1/HomeScreen/components/Title.dart';
import 'package:porto1/HomeScreen/components/categories.dart';
import 'package:porto1/HomeScreen/components/shopingWall.dart';

import '../Data/Model.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String selectedCategory = ''; 

  // Function to update selected category
  void onSelectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ShopingWall(),

          JudulKategori(
            title: "Categories",
            textbutton: "See All",
          ),
          Category(
              width: 170,
              height: 140,
              image: "assets/images/kategori",
              kategori: Content.Kategori,
              judul: Content.Judulkategori)
              ,
              
            SizedBox(height: 30),
            JudulKategori(
              title: "Best Seller",
              textbutton: "See All",
            ),
            Category(
              width: 210,
              height: 100,
              image: "assets/images/bestseller", 
              kategori: Content.bestSeller,
              judul: Content.judulbestseller,
            ),
        ],
      ),
    );
  }
}
