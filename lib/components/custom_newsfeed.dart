// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return NewsTile(
              imageUrl: articles[index].urlToImage,
              title: articles[index].title,
              desc: articles[index].desc,
            );
          },
        ),
      ),
    );
  }
}

class NewsTile extends StatelessWidget {
  const NewsTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.desc})
      : super(key: key);

  final String imageUrl, title, desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(imageUrl)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(desc,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
