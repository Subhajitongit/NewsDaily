// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=a81cf7fe10cc433899861570a0822638";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null &&
            element["description"] != null &&
            element["content"] != null &&
            element["author"] != null) {
          ArticleModel articlemodel = ArticleModel(
            title: element["title"],
            desc: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            author: element["author"],
            content: element["content"],
          );

          news.add(articlemodel);
        }
      });
    }
  }
}



class CategoryNewsClass {
  List<ArticleModel> news = [];

  Future<void> getNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=a81cf7fe10cc433899861570a0822638";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null &&
            element["description"] != null &&
            element["content"] != null &&
            element["author"] != null) {
          ArticleModel articlemodel = ArticleModel(
            title: element["title"],
            desc: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            author: element["author"],
            content: element["content"],
          );

          news.add(articlemodel);
        }
      });
    }
  }
}
