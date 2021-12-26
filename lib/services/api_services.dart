import 'package:http/http.dart';
import 'package:newsapp/models/article_model.dart';
import 'dart:convert';
class Apiservice {
  final url = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=2d3054cba1564a51b872e55ad2d6cda1';

  Future<List<Article>> getArticle() async {

    Response res = await get(Uri.parse(url));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];
      List<Article> articles =
      body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
    }
}