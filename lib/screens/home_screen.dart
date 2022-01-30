// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:news_app/components/custom_app_bar.dart';
import 'package:news_app/components/custom_category_row.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/models/category_model.dart';

import '../components/custom_newsfeed.dart';
import '../helper/news.dart';
import '../models/article_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = <CategoryModel>[];
  List<ArticleModel> articles = <ArticleModel>[];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    categories = getCategory();
    getNews();
  }

  bool _loading = true;

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            CustomAppBar(),
            SizedBox(height: 10),
            //horizontal scroll bar
            CategoryRow(categories: categories),
            Expanded(
              child: Container(
                child: _loading
                    ? Center(child: CircularProgressIndicator())
                    : NewsFeed(articles: articles),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
