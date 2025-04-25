import 'package:flutter/material.dart';
import 'package:news_app/model/categories_model.dart';
import 'package:news_app/style/app_text_styles.dart';
import 'package:news_app/views/categories_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categories});
  final CategoriesModel categories;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoriesView(category: categories.catrgoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categories.image),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              categories.catrgoryName,
              style: AppTextStyles.boled18.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
