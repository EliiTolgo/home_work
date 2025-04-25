import 'package:flutter/material.dart';

import '../model/categories_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoriesModel> categories = const [
    CategoriesModel(catrgoryName: 'business', image: 'assets/business.avif'),
    CategoriesModel(
      catrgoryName: 'Entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoriesModel(catrgoryName: 'general', image: 'assets/general.avif'),
    CategoriesModel(catrgoryName: 'health', image: 'assets/health.avif'),
    CategoriesModel(catrgoryName: 'science', image: 'assets/science.avif'),
    CategoriesModel(catrgoryName: 'sports', image: 'assets/sports.avif'),
    CategoriesModel(
      catrgoryName: 'technology',
      image: 'assets/technology.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categories: categories[index]);
        },
      ),
    );
  }
}
