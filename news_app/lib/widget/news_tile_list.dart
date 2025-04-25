import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:news_app/model/articles_model.dart';

import 'news_tile.dart';

class NewsTileList extends StatelessWidget {
  final List<ArticlesModel> articles;

  NewsTileList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsTile(articlesModel: articles[index]);
      }),
    );
  }
}
