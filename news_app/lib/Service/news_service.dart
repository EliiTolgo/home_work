import 'package:dio/dio.dart';
import 'package:news_app/model/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticlesModel>> getTopHeadlines({
    required String category,
  }) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a8a2771d39a14cb896660b1108681397&category=$category',
      );
      var jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articlesList = [];
      for (var article in articles) {
        ArticlesModel articlesModel = ArticlesModel.fromjson(article);
        articlesList.add(articlesModel);
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
