import 'package:flutter/material.dart';
import 'package:news_app/widget/newsList_viwe_builder.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [NewsListViweBuilder(category: category)],
      ),
    );
  }
}
