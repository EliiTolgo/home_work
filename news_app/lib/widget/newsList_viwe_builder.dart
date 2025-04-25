import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import '../Service/news_service.dart';
import 'news_tile_list.dart';

class NewsListViweBuilder extends StatefulWidget {
  const NewsListViweBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViweBuilder> createState() => _NewsListViweBuilderState();
}

class _NewsListViweBuilderState extends State<NewsListViweBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileList(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Center(child: Text('oops there was an error , try later ')),
          );
        } else {
          return SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
