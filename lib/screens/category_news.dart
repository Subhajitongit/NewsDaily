// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../components/custom_newsfeed.dart';
import '../helper/news.dart';

class CategoryNews extends StatefulWidget {
  const CategoryNews({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = <ArticleModel>[];
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("News",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black,
                  )),
              Text("Daily",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
            ],
          ),
          actions: [
            Opacity(
                opacity: 0,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.save)))
          ],
        ),
        body: Container(
          child: _loading
              ? Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Text(widget.category.toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            color: Colors.white,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: articles.length,
                              itemBuilder: (context, index) {
                                return NewsTile(
                                  imageUrl: articles[index].urlToImage,
                                  title: articles[index].title,
                                  desc: articles[index].desc,
                                  url: articles[index].url,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ));
  }
}
