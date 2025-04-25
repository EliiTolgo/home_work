import 'package:flutter/material.dart';
import 'package:news_app/style/app_text_styles.dart';
import 'package:news_app/widget/categories_list_view.dart';
import '../widget/newsList_viwe_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News", style: AppTextStyles.boled20),
            Text(
              'Cloud',
              style: AppTextStyles.boled20.copyWith(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          NewsListViweBuilder(category: 'general'),
        ],
      ),
    );
  }
}
