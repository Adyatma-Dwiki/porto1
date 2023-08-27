import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:porto1/Data/Model.dart';
import 'package:porto1/ItemPage/ItemPage.dart';

class Category extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final List<String> kategori;
  final List<String> judul;

  const Category({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
    required this.kategori,
    required this.judul,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(kategori.length, (index) {
            return _buildCategoryItem(context, index);
          }),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {
    return FadeInDown(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                List<String> temp;
                List<String> tempjudul;
                String handler;
                if (height > 170) {
                  temp = Content.bestSeller;
                  tempjudul = Content.judulbestseller;
                  handler = "bestsell";
                } else {
                  temp = Content.Kategori;
                  tempjudul = Content.Judulkategori;
                  handler = "kategori";
                }
                return pageitem(
                  urlImage: "$image$index.jpeg",
                  judul: judul[index],
                  productList: temp,
                  productJudul: tempjudul,
                  handler: handler,
                  selectedCategory: kategori[index],
                );
              },
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 25),
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("$image$index.jpeg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 25),
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.35),
                    Colors.black.withOpacity(0.15),
                    Colors.black.withOpacity(0.001),
                  ],
                ),
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 12),
                  child: FadeInDown(
                    delay: const Duration(milliseconds: 1200),
                    child: Text(
                      judul[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                        shadows: [
                          Shadow(
                            color: Colors.white.withOpacity(0.7),
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
