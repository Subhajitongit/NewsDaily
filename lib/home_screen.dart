// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:news_app/components/custom_app_bar.dart';
import 'package:news_app/components/custom_category_row.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/models/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = <CategoryModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategory();
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
            //horizontal scroll bar
            Column(
              children: [CategoryRow(categories: categories)],
            ),
          ],
        ),
      ),
    );
  }
}
