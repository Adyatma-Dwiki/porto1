// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:porto1/HomeScreen/components/Title.dart';
import 'package:porto1/ItemPage/components/ProdukBaru.dart';
import 'package:porto1/ItemPage/components/topItem.dart';

class pageitem extends StatelessWidget {
  final String urlImage;
  final String judul;
  final List<String> productList;
  final List<String> productJudul;
  final String handler;
  final String selectedCategory;

  const pageitem({
    super.key,
    required this.urlImage,
    required this.judul,
    required this.productList,
    required this.productJudul,
    required this.handler,
    required this.selectedCategory,
  });
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView( 
        children: [
          TopItem(imageitem: urlImage, title: judul),
          const JudulKategori(title: "New Products", textbutton: "View More >"),
          Produkbaru(
              produkbaru: productList,
              judulprodukbaru: productJudul,
              handler: handler,
              onSelectCategory: selectedCategory,)
        ],
      ),
    );
  }
}
