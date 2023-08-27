import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Produkbaru extends StatelessWidget {
  final List<String> produkbaru;
  final List<String> judulprodukbaru;
  final String handler;
  final String onSelectCategory;

  const Produkbaru({
    Key? key,
    required this.produkbaru,
    required this.judulprodukbaru,
    required this.handler,
    required this.onSelectCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(produkbaru.length, (index) {
        final String imagePath = _getImagePath(onSelectCategory, index);
        final String category = onSelectCategory;
        final String title = _getTitleForCategory(category, index);

        return FadeInDown(
          child: _buildProductItem(imagePath, title),
        );
      }),
    );
  }

  String _getImagePath(String category, int index) {
    final categoryFolder = _getCategoryFolder(category);
    return "assets/images/$categoryFolder/$handler$index.jpeg";
  }

  String _getCategoryFolder(String category) {
    switch (category) {
      case 'Category0':
        return 'beauty';
      case 'Category1':
        return 'clothes';
      case 'Category2':
        return 'makeup';
      case 'Category3':
        return 'jacket';
      default:
        return 'bestseller';
    }
  }

  String _getTitleForCategory(String category, int index) {
    // Customize this logic to fetch titles based on the selected category
    // For example, you can have a map of categories and titles
    Map<String, List<String>> categoryTitleMap = {
      'Category0': ['Channel', 'MIX RX', 'Royal Fern', 'Onoma'],
      'Category1': ['Uniclo', 'babaa', 'Erigo', 'H&M'],
      'Category2': ['Dior', 'Fenty Beauty', 'Nars',  'Maybelline'],
      'Category3': ['Boomber', 'Erigo Sweeter', 'Denim', 'H&M Knite'],
    };
    if (categoryTitleMap.containsKey(category)) {
    List<String> titles = categoryTitleMap[category]!;
    if (index >= 0 && index < titles.length) {
      return titles[index];
    }
  }
  
  return 'Best Seller'; // Return a default title if something goes wrong
}

  Widget _buildProductItem(String imagePath, String title) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 0,
            bottom: 20,
            left: 30,
            right: 30,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 0,
            bottom: 20,
            left: 30,
            right: 30,
          ),
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 15,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.4),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: FadeInDown(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 5,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 2,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
