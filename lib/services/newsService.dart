import 'dart:async';

import 'package:gitnews2/models/articleModel.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class NewsService {
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6459ba74328d41cdaa8acfdacd45826c&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlelist = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlelist.add(articleModel);
      }

      return articlelist;
    } catch (e) {
      // TODO

      return [];
    }
  }
}
